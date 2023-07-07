#!/bin/vbash
# shellcheck disable=all

set qos policy shaper DOWNLOAD bandwidth 50mbit
set qos policy shaper DOWNLOAD default bandwidth 50mbit
set qos policy shaper DOWNLOAD default queue-type fq-codel

set qos policy shaper UPLOAD bandwidth 15mbit
set qos policy shaper UPLOAD default bandwidth 15mbit
set qos policy shaper UPLOAD default queue-type fq-codel

set qos interface eth0 egress UPLOAD
set qos interface ifb0 egress DOWNLOAD
set interfaces ethernet eth0 redirect ifb0
set interfaces input ifb0
