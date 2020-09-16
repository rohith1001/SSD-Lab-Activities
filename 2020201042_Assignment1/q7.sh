#!/bin/bash

ps au | tr -s " " " " | cut -d" " -f2 | tail -n +2 > pid.txt

read INPUT

cat pid.txt | sort -n | head -${INPUT}
