#!/usr/bin/env bash
# 7ln.sh — симлинки для файлов с именем ровно 7 символов

if [ $# -ne 1 ]; then
  echo "Использование: $0 <директория_для_ссылок>"
  exit 1
fi

TARGET_DIR="$1"
mkdir -p "$TARGET_DIR"

for f in *; do
  [ -d "$f" ] && continue

  name_len=${#f}
  if [ "$name_len" -eq 7 ]; then
    ln -s "$(pwd)/$f" "$TARGET_DIR/$f"
  fi
done