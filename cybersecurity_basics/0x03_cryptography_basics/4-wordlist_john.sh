#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=raw-md5 "$1"
john --show "$1" | grep -v "Warning" | grep -v "No password hashes left" > 4-password.txt
