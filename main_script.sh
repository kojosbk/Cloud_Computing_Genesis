#!/bin/bash
# main_script.sh

# Import necessary scripts
source cli_parser.sh
source file_checker.sh
source file_upload.sh
source file_upload_feedback.sh
source file_upload_advanced.sh
source distribution_script.sh

# Main function to orchestrate the script's workflow
function main() {
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
        check_file_existence "$filename"

        if [ $? -ne 0 ]; then
            echo "Error: File '$filename' not found. Provide a valid filename."
            exit 1
        fi
    done

    echo "Looping through the files for upload..."
    for filename in "${file_list[@]}"; do
        echo "Processing file: $filename"

        # echo "Uploading file with basic functionality..."
        # upload_file "$filename"

        # echo "Uploading file with feedback..."
        # upload_file_with_feedback "$filename"

        echo "Uploading file with advanced features..."
        upload_file_with_advanced_features "$filename" "$target_directory" "$storage_class" "$overwrite_option" "overwrite"

        echo "Upload process for '$filename' completed successfully."
    done
}

# Execute the main function
main "$@"
