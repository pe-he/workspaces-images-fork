#!/usr/bin/env bash
set -ex

wget https://dlcdn.apache.org/cassandra/4.1.3/apache-cassandra-4.1.3-bin.tar.gz

tar -xf apache-cassandra-4.1.3-bin.tar.gz -C /opt/
chown -R mki.mki /opt/apache-cassandra-4.1.3
rm apache-cassandra-4.1.3-bin.tar.gz

# Desktop Icon
