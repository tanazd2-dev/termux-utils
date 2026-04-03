#!/data/data/com.termux/files/usr/bin/bash

echo "[*] Installing termux-utils..."

PREFIX="/data/data/com.termux/files/usr"
BIN_DIR="$PREFIX/bin"
LIB_DIR="$PREFIX/lib"
INC_DIR="$PREFIX/include"
BASE_URL="https://raw.githubusercontent.com/tanazd2/termux-utils/main"

# Ensure directories exist
mkdir -p "$BIN_DIR" "$LIB_DIR" "$INC_DIR"

# 🔥 DEFINE FILES HERE
FILES="c cdt exe! lock ns r su tc tct x lfsls lfsrm lfsdu lfsmkdir lfstouch"
for cmd in $FILES; do
    echo "[*] Installing $cmd..."
    if curl -fsSL "$BASE_URL/$cmd" -o "$BIN_DIR/$cmd"; then
        chmod +x "$BIN_DIR/$cmd"
        echo "[✓] Installed $cmd"
    else
        echo "[✗] Failed $cmd"
    fi
done

echo "[✓] Done with binaries!"
echo "[*] Installing headers and libraries..."

# Libraries and headers
SO="libobjects.so"
H="objects.h"

for so in $SO; do
    echo "[*] Installing $so"
    if curl -fsSL "$BASE_URL/$so" -o "$LIB_DIR/$so"; then
        echo "[✓] Installed $so"
    else
        echo "[✗] Failed $so"
    fi
done

for h in $H; do
    echo "[*] Installing $h"
    if curl -fsSL "$BASE_URL/$h" -o "$INC_DIR/$h"; then
        echo "[✓] Installed $h"
    else
        echo "[✗] Failed $h"
    fi
done

echo "[✓] Installation complete!"
