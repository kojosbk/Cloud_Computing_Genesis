#!/bin/bash

# Import the file checker script
source checker.sh

# Function to upload a file to Azure Blob Storage
upload_file() {
    local filename="$1"

    # Check if the file exists before proceeding with the upload
    check_file_existence "$filename"

    if [ $? -eq 0 ]; then
        # File exists, proceed with the upload logic
        echo "Uploading $filename to Azure Blob Storage..."
        # Add your Azure CLI or storage upload logic here
        az storage blob upload \
            --account-name cwamestg1 \
            --container-name cwamect1 \
            --account-key nDYCj0L2O1gyplP65D9s0P4aILLfeu0mDsSPvku6xgpNIwYlw+VsKHz3sHywSIpGNhx5aId6g9HL+AStf/5A1Q== \
            --name "$filename" \
            --file "$filename"
        echo "Upload complete!"
    else
        # File does not exist, display an error message
        echo "Error: File $filename not found. Provide a valid filename."
    fi
}