#!/bin/bash

cd ~/code/assignment-finalproject-coreyboy1820/buildroot

scp output/build/rpi4KernelDriver/keypadDriver.ko root@192.168.1.238:/lib/modules/6.6.28-v7l

cd -