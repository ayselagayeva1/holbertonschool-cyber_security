#!/bin/bash
awk '{print $7}' access.log | sort | uniq -c | sort -nr | head -1 | awk '{print $2}'
