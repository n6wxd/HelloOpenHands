#!/bin/bash

# Master test runner for HelloOpenHands project
# Runs all tests and reports results

echo "Running all tests for HelloOpenHands..."
echo "======================================"

TESTS_PASSED=0
TESTS_FAILED=0

# Test bash script
echo
bash test_hello_bash.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test Python script
echo
python3 test_hello_python.py
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test TypeScript script
echo
node test_hello_typescript.js
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test C program
echo
bash test_hello_c.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test C# program
echo
bash test_hello_csharp.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test Rust program
echo
bash test_hello_rust.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test Go program
echo
bash test_hello_go.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test Java program
echo
bash test_hello_java.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test JavaScript program
echo
bash test_hello_javascript.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test F# program
echo
bash test_hello_fsharp.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test VB.NET program
echo
bash test_hello_vbnet.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Test ARM64 Assembly program
echo
bash test_hello_assembly.sh
if [ $? -eq 0 ]; then
    ((TESTS_PASSED++))
else
    ((TESTS_FAILED++))
fi

# Summary
echo
echo "======================================"
echo "Test Summary:"
echo "Passed: $TESTS_PASSED"
echo "Failed: $TESTS_FAILED"
echo "Total:  $((TESTS_PASSED + TESTS_FAILED))"

if [ $TESTS_FAILED -eq 0 ]; then
    echo "✓ All tests passed!"
    exit 0
else
    echo "✗ Some tests failed!"
    exit 1
fi