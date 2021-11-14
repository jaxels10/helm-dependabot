#!/bin/bash -l
echo $1
cd "$1"
pwd
helm dependency list .