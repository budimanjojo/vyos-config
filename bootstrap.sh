#!/bin/vbash
# shellcheck shell=bash

if ! command -v sops >/dev/null 2>&1 && ! command -v git >/dev/null 2>&1; then
  echo "You need 'sops' and 'git' installed to continue."
  echo "Either build your own VyOS image or use one from 'https://github.com/onedr0p/vyos-build'"
fi

# Include VyOS specific functions and aliases
# shellcheck source=/dev/null
source /opt/vyatta/etc/functions/script-template

echo "This should be run once in a freshly installed VyOS to bootstrap your"
echo "'vyos-config' GitHub repository to the freshly installed system."
echo "You need to have at least an interface that can access to the internet"
echo "and another interface that is connected to your workstation."
echo "This script will delete everything inside '/config' directory except"
echo "for some directories created by the system."
echo "Make sure you run this script as 'vyos' user."
echo "Please just follow the instructions throughout this script."
echo "Press ENTER when you're ready."
read -r

echo "Generating SSH keypair inside '/config/secrets' directory..."
mkdir -p /config/secrets
ssh-keygen -b 2048 -t rsa -f /config/secrets/id_rsa -q -N ""
chown vyos:users /config/secrets/id_rsa*

echo "Enabling SSH access to this machine on port 22..."
# shellcheck disable=SC2121
set service ssh
commit

echo "Please enter your GitHub repository name i.e 'me/myrepo':"
read -r repoName
echo "Please enter the main branch name [main]:"
read -r repoBranch
repoBranch="${repoBranch:-main}"

ipAddresses=$(ip -o -4 addr show | awk '{print $2": "$4}' | cut -d '/' -f1 | grep -v "lo")
sshPublicKey=$(cat /config/secrets/id_rsa.pub)
printf "This machine IP addresses are:\n%s\n\n" "$ipAddresses"
echo "Please send 'age.key' to this machine using 'scp' from your workstation"
echo "connected to this machine using the interface IP it is connected to:"
echo "'scp /path/to/age.key vyos@<ip-address>:/config/secrets/age.key'"
echo ""
printf "Your SSH public key:\n%s\n\n" "$sshPublicKey"
echo "Please also add the public key to the 'Deploy key' in your GitHub repository."
echo "You can use scp to send this key to your workstation too:"
echo "'scp vyos@<ip-address>:/config/secrets/id_rsa.pub .'"
echo "Press ENTER when you're done."
read -r

echo "Pulling your repository into '/config' directory..."
cd /config || echo "Failed to cd into '/config' directory, exiting..." exit 1
# Delete everything inside '/config' except some directories so git doesn't complain
find . -maxdepth 1 \
  ! -path . \
  ! -path './archive' \
  ! -path './support' \
  ! -path './auth' \
  ! -path './user-data' \
  ! -path './secrets' \
  ! -wholename './config.boot' \
  ! -exec sudo rm -rf {} +

if [ -d .git ]; then
  rm -rf .git
fi

git config --global init.defaultBranch "$repoBranch"
git config --global safe.directory "/config"
git config --global core.sshCommand "ssh -i /config/secrets/id_rsa"
git init -q
git remote add origin git@github.com:"$repoName".git
git pull origin "$repoBranch" -q
git branch --set-upstream-to=origin/"$repoBranch" "$repoBranch" -q

echo "Loading secrets into ENV vars..."
if [ -f "/config/secrets.sops.env" ]; then
  export SOPS_AGE_KEY_FILE=/config/secrets/age.key

  mapfile environmentAsArray < <(
    sops --decrypt "/config/secrets.sops.env" |
      grep --invert-match '^#' |
      grep --invert-match '^\s*$'
  ) # Uses grep to remove commented and blank lines
  for variableDeclaration in "${environmentAsArray[@]}"; do
    export "${variableDeclaration//[$'\r\n']/}" # The substitution removes the line breaks
  done
fi

echo "Generating bootstrap container (configuration) files..."
while IFS= read -r -d '' file
do
  cfgfile="${file%.bootstrap.tmpl}"

  echo "$cfgfile generated from $file"
  envsubst <"$file" >"$cfgfile"
done < <(find containers -type f -name "*bootstrap.tmpl" -print0)

# Reset the configuration
load /opt/vyatta/etc/config.boot.default

echo "Loading bootstrap config files..."
for f in /config/bootstrap/*.sh; do
  if [ -f "${f}" ]; then
    echo "Processing ${f}"
    # shellcheck source=/dev/null
    source "${f}"
  fi
done

echo "Pulling new container images"
mapfile -t AVAILABLE_IMAGES < <(run show container image | awk '{ if ( NR > 1  ) { print $1 ":" $2} }')
mapfile -t CONFIG_IMAGES < <(sed -nr "s/set container name .* image '(.*)'/\1/p" /config/bootstrap/* | uniq)
for image in "${CONFIG_IMAGES[@]}"; do
  if [[ ! " ${AVAILABLE_IMAGES[*]} " =~ \ ${image}\  ]]; then
    echo "Pulling image ${image}"
    run add container image "${image}"
  fi
done

echo "Committing and saving config"
commit
save

echo "Done! You can now reboot your machine and run '/config/apply-config.sh'"
exit
