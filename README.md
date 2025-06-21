# HelloOpenHands

A simple "Hello World" project demonstrating basic scripting in multiple languages.

## Description

This project contains simple "Hello World" scripts in both bash and Python that print "hello world!" to the console. It serves as a basic example of scripting in different languages and can be used as a starting point for learning programming.

## Files

- `hello.sh` - Bash script that outputs "hello world!"
- `hello.py` - Python script that outputs "hello world!"
- `Tests/` - Directory containing test files
  - `test_hello_bash.sh` - Test for the bash script
  - `test_hello_python.py` - Test for the Python script
  - `run_all_tests.sh` - Master test runner

## Usage

### Bash Script

To run the bash script, make sure it has execute permissions and run it from the command line:

```bash
./hello.sh
```

Or you can run it using bash directly:

```bash
bash hello.sh
```

### Python Script

To run the Python script:

```bash
python3 hello.py
```

Or if it has execute permissions:

```bash
./hello.py
```

## Requirements

- **For bash script**: Bash shell (available on most Unix-like systems including Linux and macOS)
- **For Python script**: Python 3.x

## Output

When executed, both scripts will output:
```
hello world!
```

## Testing

This project includes automated tests to verify that both scripts work correctly.

### Running Tests

To run all tests:

```bash
cd Tests
./run_all_tests.sh
```

To run individual tests:

```bash
# Test bash script
cd Tests
./test_hello_bash.sh

# Test Python script
cd Tests
python3 test_hello_python.py
```

The tests verify that each script produces the expected "hello world!" output.

## Getting Started

1. Clone this repository
2. Navigate to the project directory
3. Run the script using one of the methods described in the Usage section

## License

This project is open source and available under the [MIT License](LICENSE).