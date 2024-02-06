#!/bin/bash

sudo apt-get update
#Measure network latency between node 0 and node 1
sudo apt−get install iputils−ping −y
ping -c 20 node1 -->network_latency_pingnode1.txt

