# Azure Storage Uploader

## Overview

The Azure Storage Uploader is a command-line tool designed to simplify the process of uploading files to Azure Blob Storage. This tool streamlines the interaction with Azure cloud storage, providing an efficient way to upload files with additional features for advanced users.

## Features

1. **CLI Argument Parsing:**
   - Utilizes bash's built-in variables to parse command-line arguments.
   - Supports specifying the filename or path and additional Azure Blob Storage attributes.

2. **File Check:**
   - Verifies the existence of the file before uploading.
   - Provides user feedback in case the file is not found.

3. **File Upload:**
   - Uses the Azure CLI to upload files securely to Azure Blob Storage.

4. **Upload Feedback:**
   - Delivers success messages upon a successful upload.
   - Captures and displays error messages in case of upload failures.

5. **Advanced Features (Optional):**
   - Allows multiple file uploads at once.
   - Incorporates a progress bar or percentage completion using tools like `pv`.
   - Generates and displays a shareable link post-upload.
   - Enables file synchronization options - prompt to overwrite, skip, or rename existing files.
   - Integrates encryption for enhanced security before uploading.

6. **Documentation:**
   - Detailed README.md file explaining setup, usage, and troubleshooting for Azure.
   - Provides an overview, prerequisites, usage examples, and common issues.

7. **Distribution:**
   - Packages the script for easy distribution and installation.
   - Includes an installation script or instructions to add it to the user's `$PATH`.

## Getting Started

Follow these steps to set up and use the Azure Storage Uploader:

1. Clone the repository: `git clone https://github.com/kojosbk/Cloud_Computing_Genesis.git`
2. Navigate to the project directory: `cd clouduploader`
3. Review the README.md for detailed instructions on Azure setup, usage, and troubleshooting.

## Azure Authentication

Before using the Azure Storage Uploader, make sure to authenticate with Azure by running the following command:

```bash
az login
```
For more information on Azure CLI authentication, refer to the Azure CLI documentation.


## Contributing

We welcome contributions from the community! If you'd like to contribute to the Cloud Storage Uploader, please review our [Contribution Guidelines](CONTRIBUTING.md) and [Code of Conduct](CODE_OF_CONDUCT.md).

## License

This project is licensed under the [MIT License](LICENSE).

## Contact

For questions or feedback, please contact the project maintainers:

- Silas Bortey - [sila.bortey@email.com](mailto:sila.bortey@email.com)
- Aaron Agyapong - [Cwameagyapong@gmail.com](mailto:Cwameagyapong@gmail.com)