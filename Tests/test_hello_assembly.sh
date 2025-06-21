#!/bin/bash

# Test script for ARM64 Assembly hello world program
# Tests the hello.s assembly implementation

echo "Testing ARM64 Assembly hello world..."

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

# Change to project directory
cd "$PROJECT_DIR"

# Clean up any existing build artifacts
rm -f hello.o hello_asm

# Check if assembly source exists
if [ ! -f "hello.s" ]; then
    echo "ERROR: hello.s not found"
    exit 1
fi

# Check if assembler is available
if ! command -v as &> /dev/null; then
    echo "ERROR: Assembler 'as' not found. Please install Xcode Command Line Tools."
    exit 1
fi

# Check if clang is available for linking
if ! command -v clang &> /dev/null; then
    echo "ERROR: clang not found. Please install Xcode Command Line Tools."
    exit 1
fi

# Assemble the source file
if ! /Library/Developer/CommandLineTools/usr/bin/as hello.s -o hello.o; then
    echo "ERROR: Failed to assemble hello.s"
    exit 1
fi

# Link the object file
if ! clang hello.o -o hello_asm; then
    echo "ERROR: Failed to link hello.o"
    exit 1
fi

# Check if executable was created
if [ ! -f "hello_asm" ]; then
    echo "ERROR: hello_asm executable not created"
    exit 1
fi

# Run the program and capture output
OUTPUT=$(./hello_asm 2>&1)
EXIT_CODE=$?

# Check exit code
if [ $EXIT_CODE -ne 0 ]; then
    echo "ERROR: hello_asm exited with code $EXIT_CODE"
    exit 1
fi

# Check output
EXPECTED="hello world!"
if [ "$OUTPUT" = "$EXPECTED" ]; then
    echo "PASS: ARM64 Assembly hello world test successful"
    # Clean up build artifacts
    rm -f hello.o hello_asm
    exit 0
else
    echo "ERROR: Expected '$EXPECTED', got '$OUTPUT'"
    # Clean up build artifacts
    rm -f hello.o hello_asm
    exit 1
fi