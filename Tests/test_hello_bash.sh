#!/bin/bash

# Test script for hello.sh
# This script tests that hello.sh produces the expected output

echo "Testing hello.sh..."

# Run the script and capture output
ACTUAL_OUTPUT=$(bash ../hello.sh)
EXPECTED_OUTPUT="hello world!"

# Compare the outputs
if [ "$ACTUAL_OUTPUT" = "$EXPECTED_OUTPUT" ]; then
    echo "✓ PASS: hello.sh produces correct output"
    exit 0
else
    echo "✗ FAIL: hello.sh produces incorrect output"
    echo "Expected: '$EXPECTED_OUTPUT'"
    echo "Actual: '$ACTUAL_OUTPUT'"
    exit 1
fi