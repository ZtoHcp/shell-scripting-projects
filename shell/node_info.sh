#!/usr/bin/env bash

#############

# This simple script checks for node info
# Version: V1

#############

#enable debug mode
set -x

echo "Print disk info"
df -h

echo "Print memory info"
free -g

echo "Print processor info"
nproc
