#!/usr/bin/env bash
set -e

DEST_DIR="$HOME/Library/Services/Convert to PDF.workflow"

if [ -d "$DEST_DIR" ]; then
  echo "==> Removing $DEST_DIR..."
  rm -rf "$DEST_DIR"
  /System/Library/CoreServices/pbs -update 2>/dev/null || true
  /System/Library/CoreServices/pbs -flush 2>/dev/null || true
  killall Finder 2>/dev/null || true
  echo "✅ Uninstalled Convert to PDF Quick Action."
else
  echo "ℹ️ Convert to PDF Quick Action is not installed."
fi
