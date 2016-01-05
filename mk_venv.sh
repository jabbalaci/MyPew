#!/usr/bin/env bash

# which Python version to use in the created virt. env. (2 or 3)
PYTHON_VER=3

d=`/bin/pwd`
pew new -p=python${PYTHON_VER} `basename "$d"`
