#!/bin/bash

# Starting master node
./es_node1/bin/elasticsearch &

# Starting other nodes
./es_node2/bin/elasticsearch &

