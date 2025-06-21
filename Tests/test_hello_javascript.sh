#!/bin/bash

# Test script for JavaScript hello world program
# Tests the hello.js Node.js implementation

echo "Testing JavaScript hello program..."

# Test 1: Check if hello.js file exists
if [ ! -f "../hello.js" ]; then
    echo "ERROR: hello.js file not found"
    exit 1
fi

# Test 2: Check if Node.js is available
if ! command -v node &> /dev/null; then
    echo "ERROR: Node.js is not installed or not in PATH"
    exit 1
fi

# Test 3: Run the JavaScript program and capture output
cd ..
output=$(node hello.js 2>&1)
exit_code=$?

# Test 4: Check if the program executed successfully
if [ $exit_code -ne 0 ]; then
    echo "ERROR: JavaScript program failed to execute"
    echo "Output: $output"
    exit 1
fi

# Test 5: Verify the output is correct
expected="hello world!"
if [ "$output" = "$expected" ]; then
    echo "SUCCESS: JavaScript program output is correct"
else
    echo "ERROR: JavaScript program output is incorrect"
    echo "Expected: '$expected'"
    echo "Got: '$output'"
    exit 1
fi

echo "All JavaScript tests passed!"
exit 0