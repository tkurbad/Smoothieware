#! /usr/bin/env bash
# Modify next line and set destination drive to match mbed device
export LPC_DEPLOY='cp PROJECT.bin /media/MBED/ ; sync'

SCRIPT_PATH=$0
SCRIPT_PATH=${SCRIPT_PATH%/*}
cd $SCRIPT_PATH
SCRIPT_PATH=$PWD
export PATH=$SCRIPT_PATH/gcc-arm-none-eabi/bin:$PATH
exec bash -c "make clean ; make PLAN9=1 all"
