#!/usr/bin/env bash

# Log faylını oxu (default: access.log)
LOG_FILE="${1:-access.log}"

# URL-ləri çıxar, say və ən çox olanı göstər
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}'
