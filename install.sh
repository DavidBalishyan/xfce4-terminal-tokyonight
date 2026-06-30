#!/usr/bin/env bash
set -euo pipefail

DEST="${XDG_DATA_HOME:-$HOME/.local/share}/xfce4/terminal/colorschemes"
mkdir -p "$DEST"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for theme in "$SCRIPT_DIR"/*.theme; do
  name="$(basename "$theme")"
  cp "$theme" "$DEST/$name"
  echo "Installed $name"
done

echo ""
echo "Done. TokyoNight themes are now available in"
echo "  Terminal > Preferences > Colors > Presets"
