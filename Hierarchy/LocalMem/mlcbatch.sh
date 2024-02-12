#!/bin/bash

# Assuming mlc is in the same directory as the batch file
MLC="./mlc"

# Measure memory latency matrix
$MLC --latency_matrix > latency_results.txt

# Measure memory bandwidth matrix
$MLC --bandwidth_matrix > bandwidth_results.txt

# Alternatively, you can use --memory_bandwidth_scan for detailed bandwidth across memory
./mlc --bandwidth_matrix > detailed_bandwith_results.txt > detailed_bandwidth_results.txt

#physical memory info
cat /proc/meminfo >physical_memory_results.txt
