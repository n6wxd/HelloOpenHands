#!/bin/bash

# Test script for hello.lua
# Tests that the Lua script produces the expected output

echo "Testing hello.lua..."

# Check if Lua is available
if ! command -v lua &> /dev/null; then
    echo "✗ SKIP: Lua not found on system"
    exit 0
fi

# Change to parent directory to run the script
cd "$(dirname "$0")/.."

# Run the Lua script and capture output
output=$(lua hello.lua 2>&1)
expected="hello world!"

# Check if output matches expected result
if [ "$output" = "$expected" ]; then
    echo "✓ PASS: hello.lua produces correct output"
    exit 0
else
    echo "✗ FAIL: hello.lua output mismatch"
    echo "Expected: '$expected'"
    echo "Got: '$output'"
    exit 1
fi