#!/bin/bash

insmod /lib/modules/6.6.28-v7l/keypadDriver.ko

dmesg | tail -n 20

# remove with rmmod keypadDriver