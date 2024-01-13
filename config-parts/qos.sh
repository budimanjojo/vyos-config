#!/bin/vbash
# shellcheck disable=all

set qos policy shaper UPLOAD bandwidth 15mbit
set qos policy shaper UPLOAD default bandwidth 15mbit
set qos policy shaper UPLOAD default queue-type fq-codel

set qos interface eth0 egress UPLOAD
