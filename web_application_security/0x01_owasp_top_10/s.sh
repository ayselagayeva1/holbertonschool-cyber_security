#!/bin/bash
for i in {1..15}; do
  session=$(curl -v http://web0x01.hbtn/a1/hijack_session/ 2>&1 | grep "hijack_session=")
  echo "Request $i: $session"
  sleep 0.3
done
