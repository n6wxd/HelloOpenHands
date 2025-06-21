#!/bin/bash

# Test VB.NET hello world program

echo "Testing VB.NET hello world..."

# Change to parent directory to run the VB.NET project
cd "$(dirname "$0")/.."

# Run the VB.NET program and capture output
output=$(dotnet run --project hello_vb.vbproj 2>/dev/null)

# Check if output matches expected result
if [ "$output" = "hello world!" ]; then
    echo "PASS: VB.NET hello world test successful"
    exit 0
else
    echo "FAIL: VB.NET hello world test failed"
    echo "Expected: hello world!"
    echo "Got: $output"
    exit 1
fi