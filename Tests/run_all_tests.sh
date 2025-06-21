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