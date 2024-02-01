#!/bin/bash

# source main.sh
source checker.sh
source upload.sh
source parser.sh
source distru.sh




# Main function to parse command-line arguments and upload files
main() {
    echo "Parsing command-line arguments..."
    parse_cli_arguments "$@"

    # Ensure that file_list is not empty
    if [ ${#file_list[@]} -eq 0 ]; then
        echo "Error: No files provided for upload."
        exit 1
    fi

    echo "Checking if the specified files exist..."
    for filename in "${file_list[@]}"; do
        echo "Checking file: $filename"
        if ! check_file_existence "$filename"; then
            echo "Error: File '$filename' not found. Provide a valid filename."
            exit 1
        fi
    done

    echo "Looping through the files for upload..."
    for filename in "${file_list[@]}"; do
        echo "Processing file: $filename"
        echo "Uploading file with advanced features..."
       upload_file "$filename" 
        echo "Upload process for '$filename' completed successfully."
    done
}

# Execute the main function with command-line arguments
main "$@"
