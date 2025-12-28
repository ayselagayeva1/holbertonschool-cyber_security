#!/bin/bash
subfinder -d $1 -silent | tee >(awk '{print $1","system("dig +short "$1" | head -n1")}' > $1.txt)
