#!/bin/bash

# This is a script to wake up the wireless card and scan for networks.

sudo ip link set wlp7s0 up;
sudo iw dev wlp7s0 scan;
