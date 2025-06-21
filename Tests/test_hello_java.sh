#!/bin/bash

# Test script for Java hello world program
# This script tests that Hello.java compiles and produces the correct output

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Get the parent directory (project root)
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "Testing Java hello program..."

# Change to project root directory
cd "$PROJECT_ROOT" || {
    echo "ERROR: Could not change to project root directory: $PROJECT_ROOT"
    exit 1
}

# Test 1: Check if Hello.java exists
if [ ! -f "Hello.java" ]; then
    echo "ERROR: Hello.java not found in $PROJECT_ROOT"
    exit 1
fi

# Test 2: Try to compile the Java program
echo "Compiling Java program..."
javac Hello.java 2>&1
COMPILE_EXIT_CODE=$?

if [ $COMPILE_EXIT_CODE -ne 0 ]; then
    echo "ERROR: Java program failed to compile"
    exit 1
fi

# Test 3: Check if Hello.class was created
if [ ! -f "Hello.class" ]; then
    echo "ERROR: Java compilation did not produce Hello.class"
    exit 1
fi

# Test 4: Try to run the Java program
echo "Running Java program..."
OUTPUT=$(java Hello 2>&1)
RUN_EXIT_CODE=$?

if [ $RUN_EXIT_CODE -ne 0 ]; then
    echo "ERROR: Java program failed to run"
    echo "Output: $OUTPUT"
    # Clean up class file before exit
    rm -f Hello.class
    exit 1
fi

# Test 5: Check if output is correct
EXPECTED="hello world!"
if [ "$OUTPUT" = "$EXPECTED" ]; then
    echo "SUCCESS: Java program output is correct"
else
    echo "ERROR: Java program output is incorrect"
    echo "Expected: '$EXPECTED'"
    echo "Got: '$OUTPUT'"
    # Clean up class file before exit
    rm -f Hello.class
    exit 1
fi

# Clean up the compiled class file
rm -f Hello.class

echo "All Java tests passed!"