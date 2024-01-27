#!/bin/bash
# tests/distribution_tests.sh

# Load the testing framework (assuming bash_unit)
source bash_unit

# Load the distribution_script.sh script
source ../distribution_script.sh

# Test cases for Packaging and Distribution functionality

@test "Packaging the script for distribution" 
{
  # Call the package_script function
  package_script

  # Assert that the dist directory and packaged script exist
  assert_directory_exists "dist"
  assert_file_exists "dist/azure_storage_uploader.sh"
}

# Additional test cases can be added based on specific requirements

# Run the tests
bash_unit

# Exit with the status from the testing framework
exit $?
