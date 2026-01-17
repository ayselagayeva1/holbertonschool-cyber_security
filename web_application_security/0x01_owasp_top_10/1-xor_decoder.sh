#!/bin/bash
echo "$1" | base64 --decode | perl -lne 'print pack("H*", $_ ^ 0x3a)' 

