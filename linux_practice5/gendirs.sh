#!/usr/bin/env bash
# gendirs.sh — создание директорий из списка в файле

if [ $# -ne 1 ]; then
  echo "Использование: $0 <файл_с_директориями>"
  exit 1
fi

INPUT_FILE="$1"

while read -r line; do
  [ -z "$line" ] && continue
  mkdir -p "$line"
done < "$INPUT_FILE"