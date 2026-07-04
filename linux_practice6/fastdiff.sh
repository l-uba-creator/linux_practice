#!/usr/bin/env bash
# fastdiff.sh — diff двух файлов, в имени которых есть заданная строка

if [ $# -ne 1 ]; then
  echo "Использование: $0 <строка_в_названии>"
  exit 1
fi

PATTERN="$1"

FILES=$(ls | grep "$PATTERN" | head -n 2)
COUNT=$(echo "$FILES" | wc -l)

if [ "$COUNT" -lt 2 ]; then
  echo "Найдено меньше двух файлов с шаблоном '$PATTERN'"
  exit 1
fi

FILE1=$(echo "$FILES" | sed -n '1p')
FILE2=$(echo "$FILES" | sed -n '2p')

echo "Сравниваем файлы:"
echo "1) $FILE1"
echo "2) $FILE2"
echo "================"

diff "$FILE1" "$FILE2"