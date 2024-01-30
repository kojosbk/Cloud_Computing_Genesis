#!/bin/bash
# file_upload_feedback.sh

# This script handles the file upload to Azure Blob Storage with enhanced feedback messages.

# Import the file checker script
source file_checker.sh

# Function to upload a file to Azure Blob Storage with feedback
function upload_file_with_feedback() {
    local filename="$1"

    # Check if the file exists before proceeding with the upload
    check_file_existence "$filename"

    if [ $? -eq 0 ]; then
        # File exists, provide feedback and proceed with the upload logic
        echo "File '$filename' found. Initiating upload to Azure Blob Storage..."
        
        # Determine the content type dynamically using the 'file' command
        local content_type=$(file --mime-type -b "$filename")
        # Add your Azure CLI or storage upload logic here
        az storage blob upload --account-name kojoskbstg1 \
         --container-name kojoskbct1 \
         --name $filename \
         --type block \
         --content-type "$content_type" \
         --file "$filename" \
         --account-key VKUAMY0b2g4J0fZI0Fg0y3bs68HIGbwprQO/fzG4jMQHCJDPCwQpm0QM9BYgEj78Sa+Xwz6bEAkR+ASt0gvX9w== \

        echo "Upload complete!"
    else
        # File does not exist, display an error message
        echo "Error: File '$filename' not found. Provide a valid filename."
    fi
}

# Example usage
# Uncomment the line below and replace "example.txt" with the desired filename
# upload_file_with_feedback "example.txt"
