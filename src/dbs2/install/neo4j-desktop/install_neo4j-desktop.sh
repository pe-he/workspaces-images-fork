#!/usr/bin/env bash
set -ex

#unzip $INST_SCRIPTS/neo4j-desktop/neo4j-desktop.zip -d /opt/

wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
echo 'deb https://debian.neo4j.com stable latest' | sudo tee -a /etc/apt/sources.list.d/neo4j.list
apt update
echo "neo4j-enterprise neo4j/accept-license select Accept commercial license" | sudo debconf-set-selections
apt install neo4j


mkdir /opt/neo4j-desktop
chown -R mki.mki /opt/neo4j-desktop

# Desktop Icon
cp $INST_DIR/dbs2/install/neo4j-desktop/neo4j-desktop.desktop /usr/share/applications/
cp /usr/share/applications/neo4j-desktop.desktop $HOME/Desktop/
chmod +x $HOME/Desktop/neo4j-desktop.desktop