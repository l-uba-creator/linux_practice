#!/usr/bin/env bash
# extract_by_ext.sh — разбор файлов по расширениям (.js, .sh)

if [ $# -ne 1 ]; then
  echo "Использование: $0 <директория>"
  exit 1
fi

BASE_DIR="$1"

mkdir -p "$BASE_DIR/javascript"
mv "$BASE_DIR"/*.js "$BASE_DIR/javascript" 2>/dev/null

mkdir -p "$BASE_DIR/bash"
mv "$BASE_DIR"/*.sh "$BASE_DIR/bash" 2>/dev/null