#!/bin/bash

# Test script for Go hello world program
# This script tests that hello.go compiles and produces the correct output

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Get the parent directory (project root)
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "Testing Go hello program..."

# Change to project root directory
cd "$PROJECT_ROOT" || {
    echo "ERROR: Could not change to project root directory: $PROJECT_ROOT"
    exit 1
}

# Test 1: Check if hello.go exists
if [ ! -f "hello.go" ]; then
    echo "ERROR: hello.go not found in $PROJECT_ROOT"
    exit 1
fi

# Test 2: Try to run the Go program directly
echo "Building and running Go program..."
OUTPUT=$(go run hello.go 2>&1)
EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
    echo "ERROR: Go program failed to run"
    echo "Output: $OUTPUT"
    exit 1
fi

# Test 3: Check if output is correct
EXPECTED="hello world!"
if [ "$OUTPUT" = "$EXPECTED" ]; then
    echo "SUCCESS: Go program output is correct"
else
    echo "ERROR: Go program output is incorrect"
    echo "Expected: '$EXPECTED'"
    echo "Got: '$OUTPUT'"
    exit 1
fi

# Test 4: Try to build the Go program
echo "Testing Go build..."
go build hello.go 2>&1
BUILD_EXIT_CODE=$?

if [ $BUILD_EXIT_CODE -ne 0 ]; then
    echo "ERROR: Go program failed to build"
    exit 1
fi

# Test 5: Run the compiled binary
if [ -f "./hello" ]; then
    BINARY_OUTPUT=$(./hello 2>&1)
    BINARY_EXIT_CODE=$?
    
    if [ $BINARY_EXIT_CODE -ne 0 ]; then
        echo "ERROR: Compiled Go binary failed to run"
        echo "Output: $BINARY_OUTPUT"
        # Clean up binary before exit
        rm -f ./hello
        exit 1
    fi
    
    if [ "$BINARY_OUTPUT" = "$EXPECTED" ]; then
        echo "SUCCESS: Compiled Go binary output is correct"
    else
        echo "ERROR: Compiled Go binary output is incorrect"
        echo "Expected: '$EXPECTED'"
        echo "Got: '$BINARY_OUTPUT'"
        # Clean up binary before exit
        rm -f ./hello
        exit 1
    fi
    
    # Clean up the compiled binary
    rm -f ./hello
else
    echo "ERROR: Go build did not produce expected binary"
    exit 1
fi

echo "All Go tests passed!"