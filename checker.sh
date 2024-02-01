#!/bin/bash


check_file_existence() {
    local filename="$1"

    # Use the '-f' test to check if the file exists
    if [ -f "$filename" ]; then
        # File exists, return success (0)
        return 0
    else
        # File does not exist, return failure (1)
        return 1
    fi
}