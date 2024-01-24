#!/bin/bash
# tests/cli_parser_tests.sh

# Load the testing framework (assuming bash_unit)
source bash_unit

# Load the cli_parser.sh script
source ../cli_parser.sh

# Test cases for CLI argument parsing

@test "Parsing filename argument" {
  parse_filename "testfile.txt"
  assert_equals "$filename" "testfile.txt"
}

@test "Parsing target directory argument" {
  parse_target_directory "/uploads"
  assert_equals "$target_directory" "/uploads"
}

@test "Parsing storage class argument" {
  parse_storage_class "STANDARD"
  assert_equals "$storage_class" "STANDARD"
}

@test "Parsing other attributes argument" {
  parse_other_attributes "content-encoding=gzip"
  assert_equals "$other_attributes" "content-encoding=gzip"
}

# Test case for validating required filename argument

@test "Validating required filename argument" {
  parse_filename ""
  display_usage | grep -q "Error: Filename is required."
  assert_success "Error message for missing filename should be displayed"
}

# Additional test cases can be added based on specific requirements

# Run the tests
bash_unit

# Exit with the status from the testing framework
exit $?
