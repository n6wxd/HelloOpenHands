#!/bin/bash

echo "Testing Clojure hello world..."

# Check if Clojure is available
if ! command -v clojure &> /dev/null; then
    echo "SKIP: Clojure not found. Please install Clojure CLI tools."
    exit 0
fi

# Change to parent directory to run the script
cd "$(dirname "$0")/.."

# Test with clojure command
OUTPUT=$(clojure -M hello.clj 2>/dev/null)
EXPECTED="hello world!"

if [ "$OUTPUT" = "$EXPECTED" ]; then
    echo "PASS: Clojure hello world test successful"
    exit 0
else
    echo "FAIL: Expected '$EXPECTED', got '$OUTPUT'"
    exit 1
fi