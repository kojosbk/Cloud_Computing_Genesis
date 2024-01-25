# CLI Argument Parsing Documentation

The Azure Storage Uploader includes a robust command-line interface (CLI) with various options for flexible file uploading to Azure Blob Storage. This document provides detailed information on how to use the CLI and its supported command-line arguments.

## Usage

```bash
./main_script.sh -f <filename> [-d <target_directory>] [-s <storage_class>] [-o <other_attributes>]
```

## Command-line Arguments

### `-f, --filename`

Specify the filename or path of the file you want to upload.

### `-d, --target-directory` (Optional)

Specify the target cloud directory where the file will be uploaded. This argument is optional, and if not provided, the file will be uploaded to the default directory.

### `-s, --storage-class` (Optional)

Specify the storage class for the uploaded file. This argument is optional, and if not provided, the default storage class will be used.

### `-o, --other-attributes` (Optional)

Specify other cloud-specific attributes for the file upload. This argument is optional and can include additional attributes such as content encoding, content type, etc.

## Azure Setup and Authentication

Before using the script, make sure to authenticate with Azure using the following command:

```bash
az login
```

## Examples

1. Upload a file without specifying additional options:

   ```bash
   ./main_script.sh -f example.txt
   ```

2. Upload a file to a specific target directory:

   ```bash
   ./main_script.sh -f example.txt -d /uploads
   ```

3. Upload a file with a specific storage class:

   ```bash
   ./main_script.sh -f example.txt -s STANDARD
   ```

4. Upload a file with multiple attributes:

   ```bash
   ./main_script.sh -f example.txt -d /uploads -s PREMIUM -o "content-encoding=gzip" 
   ```

## Notes

- Ensure that you have authenticated with Azure using `az login` before using the script.
- The script supports various advanced features, including multiple file uploads, progress tracking, and encryption. Refer to the README.md for more information.

For more details on the Azure CLI and available options, consult the [Azure CLI documentation](https://docs.microsoft.com/en-us/cli/azure/).
