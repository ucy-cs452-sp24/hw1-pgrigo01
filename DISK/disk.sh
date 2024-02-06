#!/bin/bash

#Measure meory latency using 
sudo apt  update
sudo apt  install ioping -y
ioping -c 20 /tmp/ > disk_memory_latency.txt

#Measure disk bandwidth with fio
sudo apt install fio -y
fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 --name=fiotest --filename=testfio --bs=4k --iodepth=64 --size=1G --readwrite=read > disk_bandwith.txt

#install hdparm for hard disk specs
sudo apt install hdparm -y
sudo hdparm -I /dev/sda > disk_capacity.txt 
