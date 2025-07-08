#!/usr/bin/bash

# INCLUDE ALL COMMANDS NEEDED TO PERFORM THE LAB
# This file will get called from capture_submission.sh

docker exec clab-lab1-part1-switch ip link add name br0 type bridge
docker exec clab-lab1-part1-switch ip link set br0 up
docker exec clab-lab1-part1-switch ip link set eth1 master br0
docker exec clab-lab1-part1-switch ip link set eth2 master br0
docker exec clab-lab1-part1-switch ip link set eth3 master br0
docker exec clab-lab1-part1-switch ip link set eth4 master br0

docker exec clab-lab1-part1-switch ip link set eth1 up
docker exec clab-lab1-part1-switch ip link set eth2 up
docker exec clab-lab1-part1-switch ip link set eth3 up
docker exec clab-lab1-part1-switch ip link set eth4 up
