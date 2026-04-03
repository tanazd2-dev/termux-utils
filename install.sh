# PLEASE DO NOT INSTALL

#!/data/data/com.termux/files/usr/bin/bash

# 🔥 TEMP INSTALL PREFIX
PREFIX="/data/data/com.tom.rv2ide"
BIN_DIR="$PREFIX/bin"
LIB_DIR="$PREFIX/lib"
INC_DIR="$PREFIX/include"

BASE_URL="https://raw.githubusercontent.com/tanazd2/termux-utils/main"

# Make directories
mkdir -p "$BIN_DIR" "$LIB_DIR" "$INC_DIR"

# 🔥 FILES TO INSTALL
FILES="c cdt exe! lock ns r su tc tct x lfsls lfsrm lfsdu lfsmkdir lfstouch"

for cmd in $FILES; do
    echo "[*] Installing $cmd..."
    curl -fsSL "$BASE_URL/$cmd" -o "$BIN_DIR/$cmd" && chmod +x "$BIN_DIR/$cmd" && echo "[✓] Installed $cmd" || echo "[✗] Failed $cmd"
done

# 🔥 HEADERS AND LIBS
SO="libobjects.so"
H="objects.h"

for so in $SO; do
    echo "[*] Installing $so..."
    curl -fsSL "$BASE_URL/$so" -o "$LIB_DIR/$so" && echo "[✓] Installed $so" || echo "[✗] Failed $so"
done

for h in $H; do
    echo "[*] Installing $h..."
    curl -fsSL "$BASE_URL/$h" -o "$INC_DIR/$h" && echo "[✓] Installed $h" || echo "[✗] Failed $h"
done

echo "[✓] Installation complete in $PREFIX!" 
