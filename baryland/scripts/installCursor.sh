#!/bin/bash

echo "[INFO] Installing cursor..."

echo "[INFO] Creating ~/.icons directory"
mkdir ~/.icons

echo "[INFO] Coping ~/.config/baryland/cursor/volantes_cursors to ~/.icons/"
cp -r ~/.config/baryland/cursor/volantes_cursors ~/.icons/

echo "[INFO] Cursor Installed"
