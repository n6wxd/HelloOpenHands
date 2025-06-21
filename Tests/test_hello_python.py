#!/usr/bin/env python3

import subprocess
import sys
import os

def test_hello_python():
    """Test that hello.py produces the expected output"""
    print("Testing hello.py...")
    
    try:
        # Run the Python script and capture output
        result = subprocess.run(
            [sys.executable, "../hello.py"], 
            capture_output=True, 
            text=True,
            cwd=os.path.dirname(__file__)
        )
        
        actual_output = result.stdout.strip()
        expected_output = "hello world!"
        
        # Compare the outputs
        if actual_output == expected_output:
            print("✓ PASS: hello.py produces correct output")
            return True
        else:
            print("✗ FAIL: hello.py produces incorrect output")
            print(f"Expected: '{expected_output}'")
            print(f"Actual: '{actual_output}'")
            return False
            
    except Exception as e:
        print(f"✗ ERROR: Failed to run hello.py: {e}")
        return False

if __name__ == "__main__":
    success = test_hello_python()
    sys.exit(0 if success else 1)