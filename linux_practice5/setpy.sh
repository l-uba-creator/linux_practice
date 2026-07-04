#!/usr/bin/env bash
# setpy.sh — настройка команды python через символьную ссылку

if [ $# -ne 1 ]; then
  echo "Использование: $0 <версия_python, например 3.13>"
  exit 1
fi

VER="$1"
PY_BIN="python$VER"

PY_PATH=$(which "$PY_BIN" 2>/dev/null)

if [ -z "$PY_PATH" ]; then
  echo "Интерпретатор $PY_BIN не найден в PATH"
  exit 1
fi

PY_DIR=$(dirname "$PY_PATH")

cd "$PY_DIR" || exit 1

if [ -e python ]; then
  sudo rm python
fi

sudo ln -s "$PY_BIN" python

echo "Теперь 'python' указывает на $PY_BIN ($PY_PATH)"