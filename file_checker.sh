#!/bin/bash
# file_checker.sh

# This script checks if a file exists before attempting to upload it.

# Function to check if the file exists
function check_file_existence() {
    local filename="$1"

    # Use the '[ -f ]' test to check if the file exists
    if [ -f "$filename" ]; then
        # File exists, return success (0)
        return 0
    else
        # File does not exist, return failure (1)
        return 1
    fi
}

# Example usage:
# check_file_existence "example.txt"
# if [ $? -eq 0 ]; then
#     echo "File exists, proceed with upload."
# else
#     echo "File does not exist. Provide a valid filename."
# fi
