#!/bin/bash
# file_upload_advanced.sh

# Function to upload a file with advanced features
function upload_file_with_advanced_features() {
    local filename="$1"
    local connection_string="DefaultEndpointsProtocol=https;AccountName=kojoskbstg1;AccountKey=VKUAMY0b2g4J0fZI0Fg0y3bs68HIGbwprQO/fzG4jMQHCJDPCwQpm0QM9BYgEj78Sa+Xwz6bEAkR+ASt0gvX9w==;EndpointSuffix=core.windows.net"
    local target_directory="$2"
    local storage_account_name="kojoskbstg1"  # Replace with your actual storage account name
    local container_name="kojoskbct1"        # Replace with your actual container name
    local overwrite_option="$3"

    # Check if the file exists
    if [ ! -f "$filename" ]; then
        echo "Error: File $filename not found."
        return 1
    fi

    # Use the filename as the blob name for uniqueness
    local blob_name=$(basename "$filename")

    # Ensure pv command is installed
    command -v pv > /dev/null 2>&1 || { echo >&2 "The 'pv' command is required but not installed. Aborting."; exit 1; }

    # Use Azure CLI to upload the file with a progress bar
    echo "Uploading $filename to Azure Blob Storage..."
    if [ "$overwrite_option" == "overwrite" ]; then
        az storage blob upload --account-name "$storage_account_name" --account-key VKUAMY0b2g4J0fZI0Fg0y3bs68HIGbwprQO/fzG4jMQHCJDPCwQpm0QM9BYgEj78Sa+Xwz6bEAkR+ASt0gvX9w== --connection-string "$connection_string" --container-name "$container_name" --name "$blob_name" --type block --content-type "application/octet-stream" --file "$filename" --overwrite true | pv -lep -s $(stat -c%s "$filename") > /dev/null
    else
        az storage blob upload --account-name "$storage_account_name" --account-key VKUAMY0b2g4J0fZI0Fg0y3bs68HIGbwprQO/fzG4jMQHCJDPCwQpm0QM9BYgEj78Sa+Xwz6bEAkR+ASt0gvX9w== --connection-string "$connection_string" --container-name "$container_name" --name "$blob_name" --type block --content-type "application/octet-stream" --file "$filename" | pv -lep -s $(stat -c%s "$filename") > /dev/null
    fi

    # Provide an option to generate and display a shareable link post-upload
    shareable_link=$(az storage blob url --account-name "$storage_account_name" --container-name "$container_name" --name "$blob_name" --protocol https)
    echo "Upload complete! Shareable link: $shareable_link"

    # Additional file synchronization logic if needed
    # ... (your existing synchronization logic)
}

# Replace <your_account_key> with the actual account key
