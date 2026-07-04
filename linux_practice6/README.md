# Практика 6: Чтение и запись файлов, nano, vim

## Файлы

- `head_tail.sh` — выводит 5 первых и 5 последних строк указанного файла.
- `middle.sh` — выводит всё, кроме первых и последних 5 строк файла.
- `less_stats.sh` — в `less` показывает список всех файлов (рекурсивно) с количеством строк в каждом.
- `fastdiff.sh` — сравнивает `diff` двух файлов в текущей директории, чьи имена содержат заданную строку.
- `factorial.py` — функция факториала, созданная и отредактированная в `nano`.
- `fibonacci.py` — функция Фибоначчи, созданная и отредактированная в `vim` или `nvim`.

## Права и запуск

Сделайте скрипты исполняемыми:

```bash
chmod +x head_tail.sh middle.sh less_stats.sh fastdiff.sh less_stats.sh
```

Примеры запуска:

```bash
./head_tail.sh somefile.txt
./middle.sh somefile.txt
./less_stats.sh
./fastdiff.sh report      # ищет файлы с "report" в названии
python factorial.py 5     # факториал
python fibonacci.py 10    # фибоначчи
```