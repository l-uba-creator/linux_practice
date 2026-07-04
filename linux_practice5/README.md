# Практика 5: Скрипты и ссылки (Linux, Ubuntu)

## Файлы

- `mybackup.sh` — простой бекап директории `~/projects` в `~/projects_backup`.
- `gendirs.sh` — создаёт директории из списка строк в заданном файле.
- `extract_by_ext.sh` — раскладывает `.js` и `.sh` файлы по подпапкам `javascript` и `bash`.
- `7ln.sh` — создаёт символические ссылки для файлов с именем ровно 7 символов.
- `setpy.sh` — перенаправляет команду `python` на указанную версию через символьную ссылку.

## Установка прав

```bash
chmod +x mybackup.sh gendirs.sh extract_by_ext.sh 7ln.sh setpy.sh
```

## Примеры запуска

```bash
./mybackup.sh
./gendirs.sh dirs.txt
./extract_by_ext.sh somedir
./7ln.sh links_dir
./setpy.sh 3.13
```

## Требования к окружению

На машине должны быть установлены:

- Ubuntu (или WSL с Ubuntu).
- Интерпретаторы Python:
  - `python3.10`
  - `python3.12`

Пример установки (если Python ещё нет в системе):

```bash
sudo apt update
sudo apt install python3.10 python3.12
```

Проверьте:

```bash
python3.10 --version
python3.12 --version
```

## Файлы

- `mybackup.sh` — простой бекап директории `~/projects` в `~/projects_backup`.
- `gendirs.sh` — создаёт директории из списка строк в заданном файле.
- `extract_by_ext.sh` — раскладывает `.js` и `.sh` файлы по подпапкам `javascript` и `bash`.
- `7ln.sh` — создаёт символические ссылки для файлов с именем ровно 7 символов.
- `setpy.sh` — перенаправляет команду `python` на указанную версию через символьную ссылку (например, 3.10 или 3.12).

## Установка прав

```bash
chmod +x mybackup.sh gendirs.sh extract_by_ext.sh 7ln.sh setpy.sh
```

## Примеры запуска

```bash
# бекап
./mybackup.sh

# генерация директорий из списка
./gendirs.sh dirs.txt

# разбор по расширениям
./extract_by_ext.sh somedir

# симлинки для 7-символьных имён
./7ln.sh links_dir

# переключение python на 3.12
./setpy.sh 3.12
python --version   # ожидается: Python 3.12.x

# переключение python обратно на 3.10
./setpy.sh 3.10
python --version   # ожидается: Python 3.10.x
```
