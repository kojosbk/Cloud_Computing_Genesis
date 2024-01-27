#!/bin/bash
# file_upload.sh

# This script handles the file upload to Azure Blob Storage.

# Import the file checker script
source file_checker.sh

# Function to upload a file to Azure Blob Storage
function upload_file() {
    local filename="$1"

    # Check if the file exists before proceeding with the upload
    check_file_existence "$filename"

    if [ $? -eq 0 ]; then
        # File exists, proceed with the upload logic
        echo "Uploading $filename to Azure Blob Storage..."
        # Add your Azure CLI or storage upload logic here
        az storage blob upload \
            --account-name kojoskbstg1 \
            --container-name kojoskbct1 \
            --account-key VKUAMY0b2g4J0fZI0Fg0y3bs68HIGbwprQO/fzG4jMQHCJDPCwQpm0QM9BYgEj78Sa+Xwz6bEAkR+ASt0gvX9w== \
            --name "$1" \
            --file "$1"
        echo "Upload complete!"
    else
        # File does not exist, display an error message
        echo "Error: File $filename not found. Provide a valid filename."
    fi
}

# Example usage
# Uncomment the line below and replace "example.txt" with the desired filename
# upload_file "example.txt"
