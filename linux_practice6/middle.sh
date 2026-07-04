#!/usr/bin/env bash
# middle.sh — всё кроме первых и последних 5 строк

if [ $# -ne 1 ]; then
  echo "Использование: $0 <файл>"
  exit 1
fi

FILE="$1"

if [ ! -f "$FILE" ]; then
  echo "Файл не найден: $FILE"
  exit 1
fi

TOTAL_LINES=$(wc -l < "$FILE")

if [ "$TOTAL_LINES" -le 10 ]; then
  echo "В файле меньше или равно 10 строк — середины нет."
  exit 0
fi

TAIL_COUNT=$((TOTAL_LINES - 5))
MIDDLE_COUNT=$((TAIL_COUNT - 5))

tail -n "$TAIL_COUNT" "$FILE" | head -n "$MIDDLE_COUNT"