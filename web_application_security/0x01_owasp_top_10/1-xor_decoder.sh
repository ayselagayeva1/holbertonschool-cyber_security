#!/bin/bash
echo "$1" | sed 's/^.\{4\}//' | base64 --decode | perl -lne 'print pack("H*", $_ ^ 0x3a)' 

