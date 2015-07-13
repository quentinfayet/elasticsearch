#!/bin/bash

# Java
apt-get update &&  apt-get upgrade
apt-get install default-jre -y

# Applying agentfowarding
echo -e "Host *\n    ForwardAgent yes" > ~/.ssh/config

# Install unzip
apt-get install unzip

# Getting Elasticsearch
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.2.zip -O es.zip
unzip es.zip
rm es.zip
mv elasticsearch* es_base

# Creating nodes
cp es_base es_node1 -R
cp es_base es_node2 -R

# Setting rigths
chown vagrant:vagrant * -R

# Installing HEAD
./es_node1/bin/plugin --install mobz/elasticsearch-head
