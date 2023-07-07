#!/bin/vbash
# shellcheck disable=all

set qos policy shaper DOWNLOAD bandwidth 50mbit
set qos policy shaper DOWNLOAD default bandwidth 100%
set qos policy shaper DOWNLOAD default queue-type fq-codel

set qos policy shaper UPLOAD bandwidth 15mbit
set qos policy shaper UPLOAD default bandwidth 100%
set qos policy shaper UPLOAD default queue-type fq-codel

set qos interface eth0 egress DOWNLOAD
