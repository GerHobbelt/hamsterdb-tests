#!/bin/sh
#
# hamsterdb test script
#
# Copyright (C) 2005-2007, Christoph Rupp (chris@crupp.de). 
# All rights reserved. See file LICENSE for license and copyright 
# information.
#

# run over directories 1-3
d=3

t=../common/run-tests.sh

\rm -f *.db

$t $d --reopen $1 $2 $3 $4 $5
$t $d --fullcheck-find $1 $2 $3 $4 $5
$t $d --reopen --useralloc $1 $2 $3 $4 $5
$t $d --fullcheck-find --useralloc $1 $2 $3 $4 $5
$t $d --overwrite --reopen $1 $2 $3 $4 $5
$t $d --overwrite --reopen --useralloc $1 $2 $3 $4 $5
$t $d --inmemorydb $1 $2 $3 $4 $5
$t $d --inmemorydb --useralloc $1 $2 $3 $4 $5
$t $d --overwrite --inmemorydb $1 $2 $3 $4 $5
$t $d --use-cursors --reopen $1 $2 $3 $4 $5
$t $d --use-cursors --overwrite --reopen $1 $2 $3 $4 $5
$t $d --use-cursors --inmemorydb $1 $2 $3 $4 $5
$t $d --use-cursors --overwrite --inmemorydb $1 $2 $3 $4 $5
$t $d --use-cursors --duplicate-first --reopen $1 $2 $3 $4 $5
$t $d --use-aes --reopen $1 $2 $3 $4 $5
$t $d --use-compression --reopen $1 $2 $3 $4 $5

$t $d --fullcheck-backwards --inmemorydb $1 $2 $3 $4 $5
$t $d --fullcheck-backwards --reopen $1 $2 $3 $4 $5
$t $d --fullcheck-backwards --duplicate --reopen $1 $2 $3 $4 $5
$t $d --fullcheck-backwards --overwrite --reopen $1 $2 $3 $4 $5

$t $d --duplicate --reopen $1 $2 $3 $4 $5
$t $d --fullcheck-find $1 $2 $3 $4 $5
$t $d --duplicate --reopen --useralloc $1 $2 $3 $4 $5
$t $d --duplicate --fullcheck-find --useralloc $1 $2 $3 $4 $5
$t $d --duplicate --inmemorydb $1 $2 $3 $4 $5
$t $d --duplicate --inmemorydb --useralloc $1 $2 $3 $4 $5
$t $d --duplicate --use-cursors --reopen $1 $2 $3 $4 $5
$t $d --duplicate --use-cursors --inmemorydb $1 $2 $3 $4 $5

$t $d --duplicate --sort-duplicates --reopen $1 $2 $3 $4 $5
$t $d --duplicate --sort-duplicates --reopen --useralloc $1 $2 $3 $4 $5
$t $d --duplicate --sort-duplicates --fullcheck-find --useralloc $1 $2 $3 $4 $5
$t $d --duplicate --sort-duplicates --inmemorydb $1 $2 $3 $4 $5
$t $d --duplicate --sort-duplicates --inmemorydb --useralloc $1 $2 $3 $4 $5
$t $d --duplicate --sort-duplicates --use-cursors --reopen $1 $2 $3 $4 $5
$t $d --duplicate --sort-duplicates --use-cursors --inmemorydb $1 $2 $3 $4 $5

$t $d --disable-mmap --reopen $1 $2 $3 $4 $5
$t $d --disable-mmap --overwrite --reopen $1 $2 $3 $4 $5

$t $d --keysize=8 --reopen $1 $2 $3 $4 $5
$t $d --keysize=8 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --keysize=8 --inmemorydb $1 $2 $3 $4 $5
$t $d --keysize=8 --overwrite --inmemorydb $1 $2 $3 $4 $5
$t $d --keysize=8 --use-cursors --overwrite --inmemorydb $1 $2 $3 $4 $5

$t $d --keysize2 --reopen $1 $2 $3 $4 $5
$t $d --keysize2 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --keysize2 --inmemorydb $1 $2 $3 $4 $5
$t $d --keysize2 --overwrite --inmemorydb $1 $2 $3 $4 $5

$t $d --keysize=33 --reopen $1 $2 $3 $4 $5
$t $d --keysize=33 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --keysize=33 --inmemorydb $1 $2 $3 $4 $5
$t $d --keysize=33 --overwrite --inmemorydb $1 $2 $3 $4 $5

$t $d --keysize=680 --reopen $1 $2 $3 $4 $5
$t $d --keysize=680 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --keysize=680 --inmemorydb $1 $2 $3 $4 $5
$t $d --keysize=680 --overwrite --inmemorydb $1 $2 $3 $4 $5

$t $d --pagesize024 --reopen $1 $2 $3 $4 $5
$t $d --pagesize024 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --pagesize024 --inmemorydb $1 $2 $3 $4 $5
$t $d --pagesize024 --overwrite --inmemorydb $1 $2 $3 $4 $5

$t $d --pagesize=8192 --reopen $1 $2 $3 $4 $5
$t $d --pagesize=8192 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --pagesize=8192 --inmemorydb $1 $2 $3 $4 $5
$t $d --pagesize=8192 --overwrite --inmemorydb $1 $2 $3 $4 $5

$t $d --pagesize31072 --reopen $1 $2 $3 $4 $5
$t $d --pagesize31072 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --pagesize31072 --inmemorydb $1 $2 $3 $4 $5
$t $d --pagesize31072 --overwrite --inmemorydb $1 $2 $3 $4 $5

$t $d --cacheunlimited --reopen $1 $2 $3 $4 $5
$t $d --cachesize=0 --reopen $1 $2 $3 $4 $5
$t $d --cachesize=0 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --cachesize=0 --disable-mmap --reopen $1 $2 $3 $4 $5
$t $d --cachesize=0 --overwrite --disable-mmap --reopen $1 $2 $3 $4 $5

$t $d --cachesize --reopen $1 $2 $3 $4 $5
$t $d --cachesize --overwrite --reopen $1 $2 $3 $4 $5
$t $d --cachesize --disable-mmap --reopen $1 $2 $3 $4 $5
$t $d --cachesize --overwrite --disable-mmap --reopen $1 $2 $3 $4 $5
$t $d --cachesize --use-cursors --overwrite --disable-mmap --reopen $1 $2 $3 $4 $5

$t $d --cachesize=50 --reopen $1 $2 $3 $4 $5
$t $d --cachesize=50 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --cachesize=50 --disable-mmap --reopen $1 $2 $3 $4 $5
$t $d --cachesize=50 --overwrite --disable-mmap --reopen $1 $2 $3 $4 $5
$t $d --cachesize=50 --use-cursors --overwrite --disable-mmap --reopen $1 $2 $3 $4 $5

$t $d --cachesize024 --reopen $1 $2 $3 $4 $5
$t $d --cachesize024 --overwrite --reopen $1 $2 $3 $4 $5
$t $d --cachesize024 --disable-mmap --reopen $1 $2 $3 $4 $5
$t $d --cachesize024 --overwrite --disable-mmap --reopen $1 $2 $3 $4 $5

$t $d --use-recovery --reopen $1 $2 $3 $4 $5
$t $d --use-recovery --overwrite --reopen $1 $2 $3 $4 $5
$t $d --use-recovery --pagesize024 --reopen $1 $2 $3 $4 $5
$t $d --use-recovery --duplicate --reopen $1 $2 $3 $4 $5
$t $d --use-recovery --overwrite --disable-mmap --reopen $1 $2 $3 $4 $5
$t $d --use-recovery --keysize6 --reopen $1 $2 $3 $4 $5

# HAM_DAM_SEQUENTIAL_INSERT
$t $d --data-access-mode=HAM_DAM_SEQUENTIAL_INSERT --keysize=8 --reopen $1 $2 $3 $4 $5
$t $d --data-access-mode=HAM_DAM_SEQUENTIAL_INSERT --cachesize=50 --reopen $1 $2 $3 $4 $5
$t $d --data-access-mode=HAM_DAM_SEQUENTIAL_INSERT --keysize=680 --duplicate $1 $2 $3 $4 $5
$t $d --data-access-mode=HAM_DAM_SEQUENTIAL_INSERT --keysize=680 --overwrite $1 $2 $3 $4 $5
$t $d --data-access-mode=HAM_DAM_SEQUENTIAL_INSERT --pagesize024 --overwrite --keysize6 $1 $2 $3 $4 $5

# HAM_DAM_RANDOM_WRITE
$t $d --data-access-mode=HAM_DAM_RANDOM_WRITE --keysize=8 --reopen $1 $2 $3 $4 $5
$t $d --data-access-mode=HAM_DAM_RANDOM_WRITE --cachesize=50 --reopen $1 $2 $3 $4 $5
$t $d --data-access-mode=HAM_DAM_RANDOM_WRITE --keysize=680 --duplicate $1 $2 $3 $4 $5
$t $d --data-access-mode=HAM_DAM_RANDOM_WRITE --keysize=680 --overwrite $1 $2 $3 $4 $5
$t $d --data-access-mode=HAM_DAM_RANDOM_WRITE --pagesize024 --overwrite --keysize6 $1 $2 $3 $4 $5

# HAM_HINT_APPEND
$t $d --hints=HAM_HINT_APPEND --use-cursors --reopen $1 $2 $3 $4 $5
$t $d --hints=HAM_HINT_APPEND --use-cursors --inmemorydb $1 $2 $3 $4 $5

# HAM_HINT_PREPEND
$t $d --hints=HAM_HINT_PREPEND --use-cursors --reopen $1 $2 $3 $4 $5
$t $d --hints=HAM_HINT_PREPEND --use-cursors --inmemorydb $1 $2 $3 $4 $5

# HAM_DIRECT_ACCESS
$t $d --direct-access --inmemorydb $1 $2 $3 $4 $5
$t $d --direct-access --inmemorydb --fullcheck-find $1 $2 $3 $4 $5
$t $d --direct-access --inmemorydb --useralloc $1 $2 $3 $4 $5
$t $d --direct-access --inmemorydb --overwrite $1 $2 $3 $4 $5
$t $d --direct-access --inmemorydb --overwrite --useralloc $1 $2 $3 $4
$t $d --direct-access --inmemorydb --use-cursors $1 $2 $3 $4 $5
$t $d --direct-access --inmemorydb --use-cursors --overwrite $1 $2 $3
$t $d --direct-access --inmemorydb --use-cursors --useralloc $1 $2 $3
$t $d --direct-access --inmemorydb --use-cursors --duplicate-first $1 $2 $3 $4 $5
$t $d --direct-access --inmemorydb --fullcheck-backwards $1 $2 $3 $4 $5

# use temporary transactions
$t $d --use-transactions:tmp $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --use-cursors --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --use-cursors --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --use-cursors --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --use-aes $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --use-compression $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --disable-mmap $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --fullcheck-find $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --fullcheck-backwards $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --useralloc $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --useralloc --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --pagesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --pagesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --pagesize=102400 $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --cachesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --cachesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:tmp --cachesize=102400 $1 $2 $3 $4 $5

# use transactions: group 20 ops in one txn
$t $d --use-transactions:20 $1 $2 $3 $4 $5
$t $d --use-transactions:20 --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:20 --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:20 --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:20 --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:20 --use-cursors --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:20 --use-cursors --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:20 --use-cursors --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:20 --use-aes $1 $2 $3 $4 $5
$t $d --use-transactions:20 --use-compression $1 $2 $3 $4 $5
$t $d --use-transactions:20 --disable-mmap $1 $2 $3 $4 $5
$t $d --use-transactions:20 --fullcheck-find $1 $2 $3 $4 $5
$t $d --use-transactions:20 --fullcheck-backwards $1 $2 $3 $4 $5
$t $d --use-transactions:20 --useralloc $1 $2 $3 $4 $5
$t $d --use-transactions:20 --useralloc --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:20 --pagesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:20 --pagesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:20 --pagesize=102400 $1 $2 $3 $4 $5
$t $d --use-transactions:20 --cachesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:20 --cachesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:20 --cachesize=102400 $1 $2 $3 $4 $5

# use transactions: group 200 ops in one txn
$t $d --use-transactions:200 $1 $2 $3 $4 $5
$t $d --use-transactions:200 --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:200 --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:200 --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:200 --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:200 --use-cursors --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:200 --use-cursors --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:200 --use-cursors --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:200 --use-aes $1 $2 $3 $4 $5
$t $d --use-transactions:200 --use-compression $1 $2 $3 $4 $5
$t $d --use-transactions:200 --disable-mmap $1 $2 $3 $4 $5
$t $d --use-transactions:200 --fullcheck-find $1 $2 $3 $4 $5
$t $d --use-transactions:200 --fullcheck-backwards $1 $2 $3 $4 $5
$t $d --use-transactions:200 --useralloc $1 $2 $3 $4 $5
$t $d --use-transactions:200 --useralloc --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:200 --pagesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:200 --pagesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:200 --pagesize=102400 $1 $2 $3 $4 $5
$t $d --use-transactions:200 --cachesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:200 --cachesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:200 --cachesize=102400 $1 $2 $3 $4 $5

# use transactions: group 10000 ops in one txn
$t $d --use-transactions:10000 $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --use-cursors --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --use-cursors --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --use-cursors --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --use-aes $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --use-compression $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --disable-mmap $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --fullcheck-find $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --fullcheck-backwards $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --useralloc $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --useralloc --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --pagesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --pagesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --pagesize=102400 $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --cachesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --cachesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:10000 --cachesize=102400 $1 $2 $3 $4 $5

# use transactions: group ALL ops in one txn
$t $d --use-transactions:all $1 $2 $3 $4 $5
$t $d --use-transactions:all --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:all --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:all --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:all --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:all --use-cursors --overwrite $1 $2 $3 $4 $5
$t $d --use-transactions:all --use-cursors --duplicate $1 $2 $3 $4 $5
$t $d --use-transactions:all --use-cursors --duplicate-first $1 $2 $3 $4 $5
$t $d --use-transactions:all --use-aes $1 $2 $3 $4 $5
$t $d --use-transactions:all --use-compression $1 $2 $3 $4 $5
$t $d --use-transactions:all --disable-mmap $1 $2 $3 $4 $5
$t $d --use-transactions:all --fullcheck-find $1 $2 $3 $4 $5
$t $d --use-transactions:all --fullcheck-backwards $1 $2 $3 $4 $5
$t $d --use-transactions:all --useralloc $1 $2 $3 $4 $5
$t $d --use-transactions:all --useralloc --use-cursors $1 $2 $3 $4 $5
$t $d --use-transactions:all --pagesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:all --pagesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:all --pagesize=102400 $1 $2 $3 $4 $5
$t $d --use-transactions:all --cachesize=1024 $1 $2 $3 $4 $5
$t $d --use-transactions:all --cachesize=10240 $1 $2 $3 $4 $5
$t $d --use-transactions:all --cachesize=102400 $1 $2 $3 $4 $5
