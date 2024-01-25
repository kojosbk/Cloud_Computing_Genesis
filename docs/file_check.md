
# File Check Documentation

The file check functionality in the Azure Storage Uploader ensures that the specified file exists before attempting to upload it to Azure Blob Storage.

## Purpose

The purpose of the file check is to provide a robust mechanism for validating the existence of the specified file, preventing unnecessary attempts to upload non-existent files.

## Usage

To use the file check functionality, follow these steps:

1. **Include the File Checker:**
   - Ensure that the `file_checker.sh` script is sourced within your main script or included in your project.

     ```bash
     source file_checker.sh
     ```

2. **Call the File Check Function:**
   - Before initiating the file upload, call the `check_file_existence` function with the filename as an argument.

     ```bash
     check_file_existence "example.txt"
     ```

3. **Handle the Result:**
   - Check the return status of the function to determine if the file exists or not.
   
     ```bash
     if [ $? -eq 0 ]; then
         echo "File exists, proceed with upload."
     else
         echo "File does not exist. Provide a valid filename."
     fi
     ```

## Example

Here is an example of how to integrate the file check functionality into your script:

```bash
#!/bin/bash

# Include the File Checker
source file_checker.sh

# Specify the filename to be checked
filename="example.txt"

# Call the File Check function
check_file_existence "$filename"

# Handle the result
if [ $? -eq 0 ]; then
    echo "File exists, proceed with upload."
    # Add your file upload logic here
else
    echo "File does not exist. Provide a valid filename."
fi
```

## Notes

- The `check_file_existence` function returns a status of 0 (success) if the file exists, and 1 (failure) if the file does not exist.

- It is recommended to include the file check before any file upload operation to ensure the validity of the specified file.

- Customize the file check process based on your project's specific requirements and error handling strategies.
