# Advanced Features Documentation

The file upload functionality in the Azure Storage Uploader has been enhanced with advanced features, providing additional flexibility and customization options during the upload process.

## Purpose

The purpose of the advanced features is to allow users to customize their file uploads by specifying target directories and storage classes, among other options.

## Usage

To use the advanced features during file upload, follow these steps:

1. **Include the File Checker and Advanced Upload Features Scripts:**
   - Ensure that the `file_checker.sh` and `file_upload_advanced.sh` scripts are sourced within your main script or included in your project.

     ```bash
     source file_checker.sh
     source file_upload_advanced.sh
     ```

2. **Call the Advanced Upload Features Function:**
   - Before initiating the file upload, call the `upload_file_with_advanced_features` function with the filename and advanced options as arguments.

     ```bash
     upload_file_with_advanced_features "example.txt" "uploads" "premium"
     ```

3. **Handle the Result:**
   - The script will provide feedback during the upload process, considering the advanced features specified.

## Advanced Features

### Target Directory
- Specify the target directory within Azure Blob Storage where the file will be uploaded.

### Storage Class
- Specify the storage class for the uploaded file, allowing customization based on storage requirements.

## Example

Here is an example of how to integrate the advanced features into your script:

```bash
#!/bin/bash

# Include the File Checker and Advanced Upload Features scripts
source file_checker.sh
source file_upload_advanced.sh

# Specify the filename, target directory, and storage class for the upload
filename="example.txt"
target_directory="uploads"
storage_class="premium"

# Call the Advanced Upload Features function
upload_file_with_advanced_features "$filename" "$target_directory" "$storage_class"
```

## Notes

- The `upload_file_with_advanced_features` function internally calls the `check_file_existence` function from `file_checker.sh` before proceeding with the advanced upload logic.

- Customize the advanced upload process based on your project's specific requirements and Azure Blob Storage configuration.

- Ensure that you have authenticated with Azure using `az login` before using the script.

- Advanced features provide additional options for customization, offering flexibility in the file upload process.
