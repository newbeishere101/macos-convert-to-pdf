#!/usr/bin/env bash
set -e

WORKFLOW_NAME="Convert to PDF.workflow"
DEST_DIR="$HOME/Library/Services"

echo "==> Installing $WORKFLOW_NAME into $DEST_DIR..."

mkdir -p "$DEST_DIR"
rm -rf "$DEST_DIR/$WORKFLOW_NAME"
cp -R "$WORKFLOW_NAME" "$DEST_DIR/"

echo "==> Registering Quick Action with macOS..."
/System/Library/CoreServices/pbs -update 2>/dev/null || true
/System/Library/CoreServices/pbs -flush 2>/dev/null || true
killall Finder 2>/dev/null || true

echo ""
echo "✅ Installation complete!"
echo "👉 Enable it in Finder:"
echo "   1. Right-click any file in Finder"
echo "   2. Go to 'Quick Actions' -> 'Customize...'"
echo "   3. Turn ON the toggle for 'Convert to PDF'"
