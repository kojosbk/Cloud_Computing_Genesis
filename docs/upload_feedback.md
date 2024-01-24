
# Upload Feedback Documentation

The file upload functionality in the Azure Storage Uploader has been enhanced to provide more detailed feedback messages during the upload process.

## Purpose

The purpose of the enhanced upload feedback functionality is to improve the user experience by providing informative messages about the status of the upload, including successful uploads and cases where the specified file is not found.

## Usage

To use the enhanced upload feedback functionality, follow these steps:

1. **Include the File Checker and Enhanced Upload Feedback Scripts:**
   - Ensure that the `file_checker.sh` and `file_upload_feedback.sh` scripts are sourced within your main script or included in your project.

     ```bash
     source file_checker.sh
     source file_upload_feedback.sh
     ```

2. **Call the Enhanced Upload Feedback Function:**
   - Before initiating the file upload, call the `upload_file_with_feedback` function with the filename as an argument.

     ```bash
     upload_file_with_feedback "example.txt"
     ```

3. **Handle the Result:**
   - The script will provide detailed feedback during the upload process, ensuring a clear understanding of the upload status.

## Example

Here is an example of how to integrate the enhanced upload feedback functionality into your script:

```bash
#!/bin/bash

# Include the File Checker and Enhanced Upload Feedback scripts
source file_checker.sh
source file_upload_feedback.sh

# Specify the filename to be uploaded
filename="example.txt"

# Call the Enhanced Upload Feedback function
upload_file_with_feedback "$filename"
```

## Notes

- The `upload_file_with_feedback` function internally calls the `check_file_existence` function from `file_checker.sh` before proceeding with the upload logic.

- Customized feedback messages are displayed based on the status of the file (exists or not exists).

- The enhanced feedback is designed to improve the user experience by providing clear and informative messages during the upload process.

- Ensure that you have authenticated with Azure using `az login` before using the script.

- Customize the upload feedback process based on your project's specific requirements and Azure Blob Storage configuration.
