#!/usr/bin/env bash
set -ex

cd $INST_DIR/dbs2/install/jdk
7z e jdk-11_11.0.22-10_arm64.deb.7z.001
dpkg -i jdk-11_11.0.22-10_arm64.deb


