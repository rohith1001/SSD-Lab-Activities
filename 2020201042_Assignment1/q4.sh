#!/bin/bash

read INPUT

MY_VAR=`echo $INPUT | tr -s "()" " "`

echo $MY_VAR
