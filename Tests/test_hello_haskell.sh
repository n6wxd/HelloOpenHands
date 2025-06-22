#!/bin/bash

# Test script for hello.hs
# This script tests that hello.hs produces the expected output

echo "Testing hello.hs..."

# Run the script and capture output
ACTUAL_OUTPUT=$(runhaskell ../hello.hs)
EXPECTED_OUTPUT="hello world!"

# Compare the outputs
if [ "$ACTUAL_OUTPUT" = "$EXPECTED_OUTPUT" ]; then
    echo "✓ PASS: hello.hs produces correct output"
    exit 0
else
    echo "✗ FAIL: hello.hs produces incorrect output"
    echo "Expected: '$EXPECTED_OUTPUT'"
    echo "Actual: '$ACTUAL_OUTPUT'"
    exit 1
fi