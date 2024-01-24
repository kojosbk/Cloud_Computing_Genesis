#!/bin/bash
# This line tells the computer to use the Bash shell for running this script.

# A script that will create a resource group in Azure

setup() { 
    # Install the Azure Command Line Interface (CLI)
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
    # Downloads and installs the Azure CLI.

    # Login to Azure
    az login --use-device-code
    # Opens a page for you to log in to Azure using a special code.

    echo "You're logged in."
    # Prints a message to let you know that you're logged in.
}


FILENAME=$1
TARGET_DIRECTORY=$2
STORAGE_CLASS=$3
setup
echo "File: $FILENAME"
echo "Target Directory: $TARGET_DIRECTORY"
echo "Storage Class: $STORAGE_CLASS"

