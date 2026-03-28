#!/data/data/com.termux/files/usr/bin/bash
# r: send commands or hex bytes to stdout

if [ -z "$1" ]; then
    echo "Usage: r <hex or command>"
    echo "Example for command: r echo hello"
    echo "Example for hex: r 68 65 6C 6C 6F 0A"
    exit 1
fi

# Check if first argument is hex
if [[ "$1" =~ ^[0-9A-Fa-f]+$ ]]; then
    # Send all hex arguments as bytes
    for h in "$@"; do
        printf "\\x$h"
    done
else
    # Run normal command
    "$@"
fi
