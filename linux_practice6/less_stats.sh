#!/usr/bin/env bash
# less_stats.sh — список всех файлов + количество строк, в less

find . -type f | while read -r f; do
  lines=$(wc -l < "$f")
  echo "$lines  $f"
done | less