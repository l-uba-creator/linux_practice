#!/usr/bin/env bash
# mybackup.sh — простейший бекап директории проектов (Ubuntu)

SRC_DIR="$HOME/projects"
DEST_DIR="$HOME/projects_backup"

mkdir -p "$DEST_DIR"
cp -r "$SRC_DIR"/* "$DEST_DIR"/