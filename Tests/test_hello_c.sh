#!/bin/bash

# Test script for hello.c (C version)
# This script tests that the C program compiles and produces the correct output

echo "Testing hello.c..."

# Change to parent directory where the C source is located
cd "$(dirname "$0")/.."

# Check if make is available
if ! command -v make &> /dev/null; then
    echo "✗ FAIL: make command not found"
    exit 1
fi

# Check if gcc is available
if ! command -v gcc &> /dev/null; then
    echo "✗ FAIL: gcc compiler not found"
    exit 1
fi

# Build the program
if ! make > /dev/null 2>&1; then
    echo "✗ FAIL: Failed to compile hello.c"
    exit 1
fi

# Check if the executable was created
if [ ! -f "hello" ]; then
    echo "✗ FAIL: hello executable not found after compilation"
    exit 1
fi

# Test the output
EXPECTED="hello world!"
ACTUAL=$(./hello)

if [ "$ACTUAL" = "$EXPECTED" ]; then
    echo "✓ PASS: hello.c compiles and produces correct output"
    exit 0
else
    echo "✗ FAIL: hello.c produces incorrect output"
    echo "Expected: '$EXPECTED'"
    echo "Actual: '$ACTUAL'"
    exit 1
fi