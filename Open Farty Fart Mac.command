#!/bin/zsh
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
APP_PATH="$SCRIPT_DIR/Farty Fart Mac.app"

if [[ ! -d "$APP_PATH" ]]; then
    echo "Farty Fart Mac.app was not found next to this launcher."
    exit 1
fi

xattr -dr com.apple.quarantine "$APP_PATH" 2>/dev/null || true
open "$APP_PATH"
