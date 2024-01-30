#!/bin/bash
# main_script.sh

# Azure Storage Uploader - Main Script

# Collaborators: Silas, Aaron

# Import necessary scripts
source cli_parser_debug.sh
source file_checker.sh
source file_upload.sh
source file_upload_feedback.sh
source file_upload_advanced.sh
source distribution_script.sh

# Main function to orchestrate the script's workflow
function main() {
    # Parse command-line arguments
    echo "Parsing CLI arguments..."
    parse_cli_arguments "$@"
    echo "CLI arguments parsed."

    # Check if the specified files exist
    for filename in "${file_list[@]}"; do
        echo "Checking existence of file: $filename"
        check_file_existence "$filename"

        if [ $? -ne 0 ]; then
            # File does not exist, display an error message
            echo "Error: File '$filename' not found. Provide a valid filename."
            exit 1
        fi
    done

    # Loop through the files and perform the upload
    for filename in "${file_list[@]}"; do
        echo "File '$filename' found. Initiating upload process..."

        # Upload the file with basic functionality
        # upload_file "$filename"

        # # Upload the file with feedback
        # upload_file_with_feedback "$filename"

        # Upload the file with advanced features
        upload_file_with_advanced_features "$filename" "$target_directory" "$storage_class" "$overwrite_option"

        # Display success message
        echo "Upload process completed successfully for file: $filename"
    done
}

# Execute the main function
main "$@"
