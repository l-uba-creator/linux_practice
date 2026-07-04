#!/usr/bin/env bash
# head_tail.sh — 5 первых и 5 последних строк файла

if [ $# -ne 1 ]; then
  echo "Использование: $0 <файл>"
  exit 1
fi

FILE="$1"

if [ ! -f "$FILE" ]; then
  echo "Файл не найден: $FILE"
  exit 1
fi

echo -e "================\nHEAD:\n================"
head -n 5 "$FILE"

echo -e "\n================\nTAIL:\n================"
tail -n 5 "$FILE"