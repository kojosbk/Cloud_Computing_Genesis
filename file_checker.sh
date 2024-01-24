#!/bin/bash
# file_checker.sh

# This script checks if a file exists before attempting to upload it.

# Function to check if the file exists
function check_file_existence() {
    local filename="$1"

    # Use the '[ -f ]' test to check if the file exists
    if [ -f "$filename" ]; then
        # File exists, return success (0)
        return 0
    else
        # File does not exist, return failure (1)
        return 1
    fi
}

# Example usage:
# check_file_existence "example.txt"
# if [ $? -eq 0 ]; then
#     echo "File exists, proceed with upload."
# else
#     echo "File does not exist. Provide a valid filename."
# fi

#xplanation of each line:

#!/bin/bash: Shebang line indicating that the script should be interpreted using the Bash shell.

# file_checker.sh: Comment providing a brief description of the script's purpose.

#function check_file_existence() {: Declares a Bash function named check_file_existence.

#local filename="$1": Declares a local variable named filename and assigns it the value of the first argument passed to the function.

#if [ -f "$filename" ]; then: Checks if the file specified by the filename variable exists using the -f test.

#return 0: Returns a success code (0) if the file exists.

#else: Indicates the start of the block to execute if the file does not exist.

#return 1: Returns a failure code (1) if the file does not exist.

#fi: Ends the conditional block.

#}: Ends the check_file_existence function.

# Example usage:: Comment indicating the start of an example usage section.

# check_file_existence "example.txt": Example call to the check_file_existence function with a sample filename.

# if [ $? -eq 0 ]; then: Checks if the exit status of the last command (the function call) is equal to 0 (success).

# echo "File exists, proceed with upload.": Prints a message indicating that the file exists.

# else: Indicates the start of the block to execute if the file does not exist.

# echo "File does not exist. Provide a valid filename.": Prints a message indicating that the file does not exist.

# fi: Ends the conditional block for the example usage.