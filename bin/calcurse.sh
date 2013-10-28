#!/bin/bash

# This is a script to call calcurse for all the calendars that I use.

calcurse $1
calcurse -c ~/.calcurse/friends $1
calcurse -c ~/.calcurse/costa $1
calcurse -c ~/.calcurse/rodrigues $1
