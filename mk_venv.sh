#!/usr/bin/env bash

# which Python version to use in the created virt. env. (2 or 3)
PYTHON_VER=2

pew new -p=python${PYTHON_VER} `basename "$PWD"`
