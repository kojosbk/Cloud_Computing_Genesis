# File Upload Documentation

The file upload functionality in the Azure Storage Uploader allows users to securely upload files to Azure Blob Storage. This script includes a robust mechanism to check for the existence of the specified file before initiating the upload process.

## Purpose

The purpose of the file upload functionality is to streamline the process of uploading files to Azure Blob Storage, ensuring that only existing files are uploaded.

## Usage

To use the file upload functionality, follow these steps:

1. **Include the File Checker and File Upload Scripts:**
   - Ensure that the `file_checker.sh` and `file_upload.sh` scripts are sourced within your main script or included in your project.

     ```bash
     source file_checker.sh
     source file_upload.sh
     ```

2. **Call the File Upload Function:**
   - Before initiating the file upload, call the `upload_file` function with the filename as an argument.

     ```bash
     upload_file "example.txt"
     ```

3. **Handle the Result:**
   - The script will handle the result of the file check internally and provide appropriate feedback.

## Example

Here is an example of how to integrate the file upload functionality into your script:

```bash
#!/bin/bash

# Include the File Checker and File Upload scripts
source file_checker.sh
source file_upload.sh

# Specify the filename to be uploaded
filename="example.txt"

# Call the File Upload function
upload_file "$filename"
```

## Notes

- The `upload_file` function internally calls the `check_file_existence` function from `file_checker.sh` before proceeding with the upload logic.

- Customize the file upload process based on your project's specific requirements, Azure Blob Storage configuration, and the desired upload logic.

- Ensure that you have authenticated with Azure using `az login` before using the script.

- It is recommended to include error handling and additional features based on your use case.

**Note:** Uncomment the example usage line in `file_upload.sh` before running the script.

For more details on Azure Blob Storage and CLI options, refer to the [Azure CLI documentation](https://docs.microsoft.com/en-us/cli/azure/).
