#!/bin/sh

# build image
docker build --no-cache -t peterhertkorn/dbs2-arm-workspace:ss24 -f dockerfile-dbs2-arm-workspace-ss24 .

