#!/bin/bash

hostname=$(hostname)
filename=""$(hostname)"_result.txt"
echo "Start time: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "Start time: "$(date +"%Y-%m-%d %H:%M:%S")"" > "$filename"
echo "=========== CPU Test 1 ==========="
echo "=========== CPU Test 1 ===========" >> "$filename"
echo "" >> "$filename"

echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"
sysbench --test=cpu --num-threads=2 run >> "$filename"
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"

echo "" >> "$filename"
echo "=========== File IO Test 1 ==========="
echo "=========== File IO Test 1 ===========" >> "$filename"
echo "" >> "$filename"

echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"
sysbench --test=fileio --file-total-size=5G --file-num=128 prepare > tmp.txt
sysbench --test=fileio --file-total-size=5G --file-test-mode=rndrw --time=300 --max-requests=0 --file-num=128 run >> "$filename"
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"

echo "" >> "$filename"
echo "=========== Memory Test 1 ==========="
echo "=========== Memory Test 1 ===========" >> "$filename"
echo "" >> "$filename"

sysbench --test=memory --memory-total-size=100G --memory-block-size=256K --num-threads=2 run >> "$filename"
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"

echo "" >> "$filename"
echo "=========== CPU Test 2 ==========="
echo "=========== CPU Test 2 ===========" >> "$filename"
echo "" >> "$filename"

echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"
sysbench --test=cpu --cpu-max-prime=20000 --num-threads=2 run >> "$filename"
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"

echo "" >> "$filename"
echo "=========== File IO Test 2 ==========="
echo "=========== File IO Test 2 ===========" >> "$filename"
echo "" >> "$filename"

echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"
sysbench --test=fileio --file-total-size=10G --file-num=128 prepare > tmp.txt
sysbench --test=fileio --file-total-size=10G --file-test-mode=rndrw --time=300 --max-requests=0 --file-num=128 run >> "$filename"
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"

echo "" >> "$filename"
echo "=========== Memory Test 2 ==========="
echo "=========== Memory Test 2 ===========" >> "$filename"
echo "" >> "$filename"

echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"
sysbench --test=memory --memory-total-size=50G --memory-block-size=256K --num-threads=2 run >> "$filename"
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"

echo "" >> "$filename"
echo "=========== CPU Test 3 ==========="
echo "=========== CPU Test 3 ===========" >> "$filename"
echo "" >> "$filename"

echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"
sysbench --test=cpu --cpu-max-prime=10000 --num-threads=2 run >> "$filename"
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"

echo "" >> "$filename"
echo "=========== File IO Test 3 ==========="
echo "=========== File IO Test 3 ===========" >> "$filename"
echo "" >> "$filename"

echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"
sysbench --test=fileio --file-total-size=5G --file-num=256 prepare > tmp.txt
sysbench --test=fileio --file-total-size=5G --file-test-mode=rndrw --time=300 --max-requests=0 --file-num=256 run >> "$filename"
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"

echo "" >> "$filename"
echo "=========== Memory Test 3 ==========="
echo "=========== Memory Test 3 ===========" >> "$filename"
echo "" >> "$filename"

echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "Start test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"
sysbench --test=memory --memory-total-size=50G --memory-block-size=256K --num-threads=2 run >> "$filename"
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End test: "$(date +"%Y-%m-%d %H:%M:%S")"" >> "$filename"

echo ""
echo "End time: "$(date +"%Y-%m-%d %H:%M:%S")""
echo "End time: "$(date +"%Y-%m-%d %H:%M:%S")"" > "$filename"
echo "Test result was saved in "$filename""
rm -f tmp.txt
rm -f test_file*