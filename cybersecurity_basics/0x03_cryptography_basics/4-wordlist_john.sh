#!/bin/bash
: > "$(dirname "$0")/4-password.txt"; john --wordlist=/usr/share/wordlists/rockyou.txt "$1"; john --show "$1" | awk -F: '{print $2}' > "$(dirname "$0")/4-password.txt"
