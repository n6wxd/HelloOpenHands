#!/bin/bash

# Test script for hello.pl
# Tests that the Perl script produces the expected output

echo "Testing hello.pl..."

# Check if Perl is available
if ! command -v perl &> /dev/null; then
    echo "✗ SKIP: Perl not found on system"
    exit 0
fi

# Change to parent directory to run the script
cd "$(dirname "$0")/.."

# Run the Perl script and capture output
output=$(perl hello.pl 2>&1)
expected="hello world!"

# Check if output matches expected result
if [ "$output" = "$expected" ]; then
    echo "✓ PASS: hello.pl produces correct output"
    exit 0
else
    echo "✗ FAIL: hello.pl output mismatch"
    echo "Expected: '$expected'"
    echo "Got: '$output'"
    exit 1
fi