#!/bin/bash

# # Function to install Azure CLI and login
# setup() {
#     # Install the Azure Command Line Interface (CLI)
#     curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

#     # Login to Azure
#     az login --use-device-code
#     echo "You're logged in."
# }

# Function to parse CLI arguments
parse_cli_arguments() {
    while [[ $# -gt 0 ]]; do
        key="$1"

        case $key in
            -f|--filename)
                filename="$2"
                shift
                shift
                ;;
            # -d|--target-directory)
            #     target_directory="$2"
            #     shift
            #     shift
            #     ;;
            # -s|--storage-class)
            #     storage_class="$2"
            #     shift
            #     shift
            #     ;;
            # -o|--other-attributes)
            #     other_attributes="$2"
            #     shift
            #     shift
            #     ;;
            # *)
            #     display_usage
            #     exit 1
            #     ;;
        esac
    done
}

# Function to display script usage
usage() {
    echo "Usage: $0 -f <filename> [-d <target-directory>] [-s <storage-class>] [-o <other-attributes>]"
    exit 1
}

# Check if filename is provided
if [ -z "$1" ]; then
    echo "Error: Please provide a filename."
    usage
fi

# Parse the command-line arguments
parse_cli_arguments "$@"

# Check if file exists
FILENAME="$filename"
if [ ! -f "$FILENAME" ]; then
    echo "Error: File '$FILENAME' not found."
    exit 1
fi



# Upload file to cloud provider
echo "Uploading file '$FILENAME'..."

# # Call setup function to install Azure CLI and login
# setup
