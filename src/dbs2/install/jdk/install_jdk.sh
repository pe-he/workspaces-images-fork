#!/usr/bin/env bash
set -ex

cd $INST_DIR/dbs2/install/jdk
wget https://download.bell-sw.com/java/11.0.22+12/bellsoft-jdk11.0.22+12-linux-aarch64-full.deb
dpkg -i bellsoft-jdk11.0.22+12-linux-aarch64-full.deb


