#!/bin/sh

# stop and remove old container
docker stop dbs2-workspace-ss24
docker rm dbs2-workspace-ss24
 
# create container
docker run -itd --name dbs2-workspace-ss24 --network=dbs2 --shm-size=1024m -p 6901:6901 -v ~/Docker/mki-ss24:/home/mki -v dbs2-opt:/opt -e VNC_PW=dbs2-ss24 peterhertkorn/dbs2-arm-workspace:ss24

