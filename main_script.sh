#!/bin/bash
# main_script.sh

# Azure Storage Uploader - Main Script

# Collaborators: Silas, Aaron

# This script provides a command-line interface for uploading files to Azure Blob Storage.

# Import necessary scripts
source cli_parser.sh
source file_checker.sh
source file_upload.sh
source file_upload_feedback.sh
source file_upload_advanced.sh
source distribution_script.sh

# Main function to orchestrate the script's workflow
function main() {
    # Parse command-line arguments
    parse_command_line_arguments "$@"

    # Check if the specified file exists
    check_file_existence "$FILENAME"

    if [ $? -eq 0 ]; then
        # File exists, proceed with the upload process
        echo "File '$FILENAME' found. Initiating upload process..."

        # Upload the file with basic functionality
        upload_file "$FILENAME"

        # Upload the file with feedback
        upload_file_with_feedback "$FILENAME"

        # Upload the file with advanced features
        upload_file_with_advanced_features "$FILENAME" "$TARGET_DIRECTORY" "$STORAGE_CLASS"

        # Display success message
        echo "Upload process completed successfully."

    else
        # File does not exist, display an error message
        echo "Error: File '$FILENAME' not found. Provide a valid filename."
    fi
}

# Execute the main function
main "$@"
