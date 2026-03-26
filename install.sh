#!/data/data/com.termux/files/usr/bin/bash

echo "[*] Installing termux-miscellaneous..."

PREFIX="/data/data/com.termux/files/usr"
BIN_DIR="$PREFIX/bin"
BASE_URL="https://raw.githubusercontent.com/tanazd1/termux-miscellaneous/main"

# 🔥 DEFINE FILES HERE (IMPORTANT)
FILES="c cdt ns su tc tct x"

for cmd in $FILES; do
    echo "[*] Installing $cmd..."

    if curl -fsSL "$BASE_URL/$cmd" -o "$BIN_DIR/$cmd"; then
        chmod +x "$BIN_DIR/$cmd"
        echo "[✓] Installed $cmd"
    else
        echo "[✗] Failed $cmd"
    fi
done

echo "[✓] Done!"
