#!/data/data/com.termux/env bash

echo "[*] Installing termux-miscallious..."

BIN_DIR="$PREFIX/bin"

for cmd in *; do
    # skip non-files and installer files
    [ -f "$cmd" ] || continue
    case "$cmd" in
        install.sh|uninstall.sh|README.md) continue ;;
    esac

    # make executable
    chmod +x "$cmd"

    # install to $PREFIX/bin
    install -Dm755 "$cmd" "$BIN_DIR/$cmd"

    echo "[✓] Installed $cmd"
done

echo "[✓] Done!"
