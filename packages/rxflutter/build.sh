#!/bin/bash

TARGET_DIR="../lib"
TARGET_DART_TOOL_DIR="$TARGET_DIR/.dart_tool"

if [ -d "$TARGET_DART_TOOL_DIR" ]; then
# Ask the user if they want to remove it
read -p "The directory '$TARGET_DART_TOOL_DIR' exists. It may cause the wrong Flutter version linking issue. Do you want to remove it? (yes/no): " response

if [[ "$response" == "yes" ]]; then
    # Remove the directory
    rm -rf "$TARGET_DART_TOOL_DIR"
    echo "Directory '$TARGET_DART_TOOL_DIR' removed."
fi
fi


curl -L -o latest.tar.gz https://github.com/haitr/flutter_clone/releases/download/clone_latest/latest.tar.gz
tar -xzkf latest.tar.gz
cd clone
dart pub get
dart run prepare
dart run clone -o "$TARGET_DIR"