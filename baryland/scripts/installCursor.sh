#!/bin/bash

echo "[INFO] Installing cursor..."

echo "[INFO] [1/2] Creating ~/.icons directory"
mkdir ~/.icons

echo "[INFO] [2/2] Coping ~/.config/baryland/cursor/volantes_cursors to ~/.icons/"
cp -r ~/.config/baryland/cursor/volantes_cursors ~/.icons/

echo "[INFO] Cursor Installed"
