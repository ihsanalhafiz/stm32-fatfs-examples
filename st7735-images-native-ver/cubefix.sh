#!/bin/sh

# Fix project after updating it with STM32CubeMX

set -e

cp Makefile.backup Makefile
dos2unix Src/main.c
dos2unix Src/user_diskio.c
sed -i -e '1,47d' Src/main.c
