#!/bin/bash
# tests/file_upload_feedback_tests.sh

# Load the testing framework (assuming bash_unit)
source bash_unit

# Load the file_checker.sh script
source ../file_checker.sh

# Load the file_upload_feedback.sh script
source ../file_upload_feedback.sh

# Test cases for File Upload with Feedback functionality

@test "Uploading an existing file with feedback" {
  # Specify the filename to be uploaded
  local filename="testfile.txt"

  # Call the upload_file_with_feedback function with an existing file
  upload_file_with_feedback "$filename"

  # Assert that the return status is 0 (success)
  assert_equals "$?" "0"
}

@test "Uploading a non-existing file with feedback" {
  # Specify a non-existing filename
  local filename="nonexistent.txt"

  # Call the upload_file_with_feedback function with a non-existing file
  upload_file_with_feedback "$filename"

  # Assert that the return status is 1 (failure)
  assert_equals "$?" "1"
}

# Additional test cases can be added based on specific requirements

# Run the tests
bash_unit

# Exit with the status from the testing framework
exit $?
