#!/bin/bash

# Test script for C# hello program
# Tests compilation and execution of hello.cs

echo "Testing C# hello program..."

# Check if dotnet is available
if ! command -v dotnet &> /dev/null; then
    echo "ERROR: dotnet CLI not found. Please install .NET SDK."
    exit 1
fi

# Check if project files exist
if [ ! -f "../hello.cs" ]; then
    echo "ERROR: hello.cs not found"
    exit 1
fi

if [ ! -f "../hello.csproj" ]; then
    echo "ERROR: hello.csproj not found"
    exit 1
fi

# Test compilation and execution
echo "Building and running C# program..."
cd ..
output=$(dotnet run --project hello.csproj 2>&1)
exit_code=$?

if [ $exit_code -ne 0 ]; then
    echo "ERROR: C# program failed to build or run"
    echo "Output: $output"
    exit 1
fi

# Check output
expected="hello world!"
if [ "$output" = "$expected" ]; then
    echo "SUCCESS: C# program output is correct"
    exit 0
else
    echo "ERROR: C# program output is incorrect"
    echo "Expected: '$expected'"
    echo "Got: '$output'"
    exit 1
fi