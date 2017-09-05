#!/bin/bash

echo
echo '========== PROCESS POOL WITHOUT CONTENTION =========='
build/db --contention  --exp_type 0 --pool_size 1;   killall db
build/db --contention  --exp_type 0 --pool_size 2;   killall db
build/db --contention  --exp_type 0 --pool_size 4;   killall db
build/db --contention  --exp_type 0 --pool_size 8;   killall db
build/db --contention  --exp_type 0 --pool_size 16;  killall db
build/db --contention  --exp_type 0 --pool_size 32;  killall db
build/db --contention  --exp_type 0 --pool_size 64;  killall db
build/db --contention  --exp_type 0 --pool_size 128; killall db
echo

echo '========== PROCESS PER REQUEST WITHOUT CONTENTION =========='
build/db --contention  --exp_type 1 --max_outstanding 1
build/db --contention  --exp_type 1 --max_outstanding 2
build/db --contention  --exp_type 1 --max_outstanding 4
build/db --contention  --exp_type 1 --max_outstanding 8
build/db --contention  --exp_type 1 --max_outstanding 16
build/db --contention  --exp_type 1 --max_outstanding 32
build/db --contention  --exp_type 1 --max_outstanding 64
build/db --contention  --exp_type 1 --max_outstanding 128
echo

echo '========== THREAD POOL WITHOUT CONTENTION =========='
build/db --contention  --exp_type 2 --pool_size 1
build/db --contention  --exp_type 2 --pool_size 2
build/db --contention  --exp_type 2 --pool_size 4
build/db --contention  --exp_type 2 --pool_size 8
build/db --contention  --exp_type 2 --pool_size 16
build/db --contention  --exp_type 2 --pool_size 32
build/db --contention  --exp_type 2 --pool_size 64
build/db --contention  --exp_type 2 --pool_size 128
echo

echo '========== THREAD PER REQUEST WITHOUT CONTENTION =========='
build/db --contention  --exp_type 3 --max_outstanding 1
build/db --contention  --exp_type 3 --max_outstanding 2
build/db --contention  --exp_type 3 --max_outstanding 4
build/db --contention  --exp_type 3 --max_outstanding 8
build/db --contention  --exp_type 3 --max_outstanding 16
build/db --contention  --exp_type 3 --max_outstanding 32
build/db --contention  --exp_type 3 --max_outstanding 64
build/db --contention  --exp_type 3 --max_outstanding 64
echo

