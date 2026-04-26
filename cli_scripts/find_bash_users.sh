#!/bin/bash

FILE_PATH="/etc/passwd"

if [ ! -f "$FILE_PATH" ]; then
    echo "File $FILE_PATH doesn't exist."
    exit 1
fi

awk -F: '$7 == "/bin/bash" {print $1}' "$FILE_PATH"
