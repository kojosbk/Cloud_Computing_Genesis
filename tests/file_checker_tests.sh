#!/bin/bash
# tests/file_checker_tests.sh

# Load the testing framework (assuming bash_unit)
source bash_unit

# Load the file_checker.sh script
source ../file_checker.sh

# Test cases for File Checker functionality

@test "Checking existence of an existing file" {
  # Call the check_file_existence function with an existing file
  check_file_existence "testfile.txt"

  # Assert that the return status is 0 (success)
  assert_equals "$?" "0"
}

@test "Checking existence of a non-existing file" {
  # Call the check_file_existence function with a non-existing file
  check_file_existence "nonexistent.txt"

  # Assert that the return status is 1 (failure)
  assert_equals "$?" "1"
}

# Additional test cases can be added based on specific requirements

# Run the tests
bash_unit

# Exit with the status from the testing framework
exit $?
