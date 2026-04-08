#!/bin/bash

# Define paths to avoid repetition
DEST="/home/nico/legal/onio/index.html"
SRC="/home/nico/AndroidStudioProjects/Onio/index.html"

# 1. Attempt to remove the old file
if rm "$DEST" 2>/dev/null; then
    echo "✅ Successfully removed old index.html"
else
    echo "⚠️  Note: No existing file to remove or permission denied at $DEST"
fi

# 2. Attempt to copy the new file
if cp "$SRC" "$DEST"; then
    echo "🚀 Success: New index.html copied to $DEST"
else
    echo "❌ Error: Failed to copy file. Check if $SRC exists!"
    exit 1
fi
