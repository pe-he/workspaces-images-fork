#!/usr/bin/env bash
set -ex

apt-get update
apt-get install -y basex

# Desktop Icon
#cp /usr/share/applications/basexgui.desktop $HOME/Desktop/
cp $INST_DIR/dbs2/install/basex/basexgui.desktop $HOME/Desktop/
chmod +x $HOME/Desktop/basexgui.desktop

