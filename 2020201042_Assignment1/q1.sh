#!/bin/bash

mkdir Assignment1
cd Assignment1

touch lab{1..5}.txt

ls -1 | xargs -L 1 -I {} bash -c 'mv $1 "${1%.txt}.c"' _ {}

ls -lSr `pwd`

find ~ -maxdepth 2

ls -1 "$(pwd)"/*.txt 2>/dev/null
