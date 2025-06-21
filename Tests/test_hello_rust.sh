#!/bin/bash

# Test script for Rust hello program
# This script tests that the Rust program compiles and produces the correct output

set -e  # Exit on any error

echo "Testing Rust hello program..."

# Change to parent directory to access hello.rs and Cargo.toml
cd "$(dirname "$0")/.."

# Check if Rust files exist
if [ ! -f "hello.rs" ]; then
    echo "ERROR: hello.rs not found"
    exit 1
fi

if [ ! -f "Cargo.toml" ]; then
    echo "ERROR: Cargo.toml not found"
    exit 1
fi

# Check if cargo is available
if ! command -v cargo &> /dev/null; then
    echo "ERROR: cargo not found. Please install Rust toolchain."
    exit 1
fi

echo "Building and running Rust program..."

# Build and run the Rust program, capture output
OUTPUT=$(cargo run --quiet 2>/dev/null)

# Check if output matches expected result
EXPECTED="hello world!"
if [ "$OUTPUT" = "$EXPECTED" ]; then
    echo "SUCCESS: Rust program output is correct"
    exit 0
else
    echo "FAILURE: Expected '$EXPECTED', got '$OUTPUT'"
    exit 1
fi