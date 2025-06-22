#!/bin/bash

# Test script for hello.rb
# This script tests that hello.rb produces the expected output

echo "Testing hello.rb..."

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "✗ FAIL: Ruby is not installed"
    exit 1
fi

# Run the script and capture output
ACTUAL_OUTPUT=$(ruby ../hello.rb)
EXPECTED_OUTPUT="hello world!"

# Compare the outputs
if [ "$ACTUAL_OUTPUT" = "$EXPECTED_OUTPUT" ]; then
    echo "✓ PASS: hello.rb produces correct output"
    exit 0
else
    echo "✗ FAIL: hello.rb produces incorrect output"
    echo "Expected: '$EXPECTED_OUTPUT'"
    echo "Actual: '$ACTUAL_OUTPUT'"
    exit 1
fi