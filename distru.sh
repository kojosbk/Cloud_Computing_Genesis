#!/bin/bash
# distribution_script.sh

# This script handles the packaging and distribution of the Azure Storage Uploader script.

# Function to package the script for distribution
function package_script() {
    local script_name="main.sh"
    local output_directory="dist"
    local package_name="azure_storage_uploader"

    # Check if the main script exists before proceeding with packaging
    if [ -f "$script_name" ]; then
        # Create the output directory if it doesn't exist
        mkdir -p "$output_directory"

        # Package the script (copy to the dist directory)
        cp "$script_name" "$output_directory/$package_name.sh"

        echo "Script has been packaged successfully. Find the packaged script in the '$output_directory' directory with the name '$package_name.sh'."
    else
        # Main script not found, display an error message
        echo "Error: Main script '$script_name' not found. Ensure the script exists before packaging."
    fi
}

# Example usage
# Uncomment the line below to package the script
# package_script