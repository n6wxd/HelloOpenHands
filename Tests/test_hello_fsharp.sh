#!/bin/bash

# Test F# hello world implementation

echo "Testing F# hello world..."

# Check if dotnet is installed
if ! command -v dotnet &> /dev/null; then
    echo "FAIL: dotnet is not installed"
    exit 1
fi

# Run the F# script and capture output
output=$(dotnet fsi ../hello.fsx 2>&1)
exit_code=$?

# Check if the command succeeded
if [ $exit_code -ne 0 ]; then
    echo "FAIL: F# script execution failed with exit code $exit_code"
    echo "Output: $output"
    exit 1
fi

# Check if output contains "hello world!"
if [[ "$output" == *"hello world!"* ]]; then
    echo "PASS: F# hello world test successful"
    exit 0
else
    echo "FAIL: Expected 'hello world!' but got: $output"
    exit 1
fi