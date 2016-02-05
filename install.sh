#!/usr/bin/env sh

TEMPLATES_DIR="$HOME/Library/Developer/Xcode/Templates"
PROJECT_TEMPLATES_DIR="$TEMPLATES_DIR/Project Templates"
FILE_TEMPLATES_DIR="$TEMPLATES_DIR/File Templates"

REEFISH_TARGET_PROJECT_TEMPLATES_DIR="$PROJECT_TEMPLATES_DIR/ReeFish"
REEFISH_TARGET_FILE_TEMPLATES_DIR="$FILE_TEMPLATES_DIR/ReeFish"

REEFISH_SOURCE_DIR=$(dirname "$0")
REEFISH_SOURCE_PROJECT_TEMPLATES_DIR="$REEFISH_SOURCE_DIR/Project Templates/ReeFish"
REEFISH_SOURCE_FILE_TEMPLATES_DIR="$REEFISH_SOURCE_DIR/File Templates/ReeFish"


echo "Installing ReeFish Project templates to $REEFISH_TARGET_PROJECT_TEMPLATES_DIR from $REEFISH_SOURCE_PROJECT_TEMPLATES_DIR"
mkdir -p "$PROJECT_TEMPLATES_DIR"
cp -R "$REEFISH_SOURCE_PROJECT_TEMPLATES_DIR" "$PROJECT_TEMPLATES_DIR"

echo "Installing ReeFish File templates to $REEFISH_TARGET_FILE_TEMPLATES_DIR from $REEFISH_SOURCE_FILE_TEMPLATES_DIR"
mkdir -p "$FILE_TEMPLATES_DIR"
cp -R "$REEFISH_SOURCE_FILE_TEMPLATES_DIR" "$FILE_TEMPLATES_DIR"

find "$REEFISH_TARGET_PROJECT_TEMPLATES_DIR" -name ".gitkeep" -type f -exec rm -rf {} \;

echo "Install Finished."
