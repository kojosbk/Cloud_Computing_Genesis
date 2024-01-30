#!/bin/bash

# cli_parser.sh

# Default values
filename=""
target_directory=""
storage_class=""
other_attributes=""

# Function to display script usage
function display_usage() {
    echo "Usage: $0 -f <filename> [-d <target_directory>] [-s <storage_class>] [-o <other_attributes>]"
    echo ""
    echo "Options:"
    echo "  -f, --filename           Specify the filename or path."
    echo "  -d, --target-directory   Specify the target cloud directory (optional)."
    echo "  -s, --storage-class      Specify the storage class (optional)."
    echo "  -o, --other-attributes   Specify other cloud-specific attributes (optional)."
    echo ""
}

# Function for Azure setup and authentication
function azure_setup_and_authentication() {
    # Choose a cloud provider (e.g., AWS S3, Google Cloud Storage, Azure Blob Storage).
    # Setup authentication. For instance, with Azure, you'd use `az login` to set up your credentials.
    az login
}

# Function to parse command-line arguments
function parse_cli_arguments() {
    # Loop through all command-line arguments
    while [[ $# -gt 0 ]]; do
        key="$1"

        # Check the current argument against different options using a case statement
        case $key in
            -f|--filename)
                # If the argument is -f or --filename, assign the next value to the filename variable
                filename="$2"
                # Shift to the next argument
                shift
                # Shift again to skip the value associated with the current argument
                shift
                ;;
            -d|--target-directory)
                # If the argument is -d or --target-directory, assign the next value to the target_directory variable
                target_directory="$2"
                # Shift to the next argument
                shift
                # Shift again to skip the value associated with the current argument
                shift
                ;;
            -s|--storage-class)
                # If the argument is -s or --storage-class, assign the next value to the storage_class variable
                storage_class="$2"
                # Shift to the next argument
                shift
                # Shift again to skip the value associated with the current argument
                shift
                ;;
            -o|--other-attributes)
                # If the argument is -o or --other-attributes, assign the next value to the other_attributes variable
                other_attributes="$2"
                # Shift to the next argument
                shift
                # Shift again to skip the value associated with the current argument
                shift
                ;;
            *)
                # If the argument doesn't match any expected options, display usage information and exit with an error code
                display_usage
                echo "Error encountered, exiting..."
    exit 1
                ;;
        esac
    done

    # Validate required arguments
    # Check if the filename variable is empty, and if so, display an error message, usage information, and exit with an error code
    if [ -z "$filename" ]; then
        echo "Error: Filename is required."
        display_usage
        echo "Error encountered, exiting..."
    exit 1
    fi



    # Setup and authenticate with Azure
    # azure_setup_and_authentication

    # Other logic related to uploading the file to Azure Storage
    # Example:
    # az storage blob upload --account-name <account_name> --container-name <container_name> --name <blob_name> --type block --content-type "application/octet-stream" --file "$filename"

    # echo "File upload complete!"
}

# Call the function to parse command-line arguments
#echo "Starting to parse CLI arguments..."
parse_cli_arguments "$@"
echo "Finished parsing CLI arguments."
