# HelloOpenHands

A simple "Hello World" project demonstrating basic scripting in multiple languages.

## Description

This project contains simple "Hello World" scripts in bash, Python, TypeScript, C, and C# that print "hello world!" to the console. It serves as a basic example of programming in different languages and can be used as a starting point for learning programming.

## Files

- `hello.sh` - Bash script that outputs "hello world!"
- `hello.py` - Python script that outputs "hello world!"
- `hello.ts` - TypeScript script that outputs "hello world!"
- `hello.c` - C program that outputs "hello world!"
- `hello.cs` - C# program that outputs "hello world!"
- `hello.csproj` - .NET project file for the C# program
- `Makefile` - Build configuration for the C program
- `Tests/` - Directory containing test files
  - `test_hello_bash.sh` - Test for the bash script
  - `test_hello_python.py` - Test for the Python script
  - `test_hello_typescript.js` - Test for the TypeScript script
  - `test_hello_c.sh` - Test for the C program
  - `test_hello_csharp.sh` - Test for the C# program
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

### TypeScript Script

To run the TypeScript script with Node.js (since it's also valid JavaScript):

```bash
node hello.ts
```

Or if you have TypeScript compiler installed, you can compile and run:

```bash
tsc hello.ts && node hello.js
```

### C Program

To compile and run the C program using make:

```bash
make
./hello
```

Or compile and run in one step:

```bash
make run
```

To clean up compiled files:

```bash
make clean
```

Available make targets:
- `make` or `make all` - Compile the C program
- `make run` - Compile and run the program
- `make test` - Compile and test the program
- `make clean` - Remove compiled files

### C# Program

To run the C# program using the .NET CLI:

```bash
dotnet run --project hello.csproj
```

Or simply:

```bash
dotnet run
```

To build the C# program without running:

```bash
dotnet build
```

To clean build artifacts:

```bash
dotnet clean
```

## Requirements

- **For bash script**: Bash shell (available on most Unix-like systems including Linux and macOS)
- **For Python script**: Python 3.x
- **For TypeScript script**: Node.js (to run as JavaScript) or TypeScript compiler (optional)
- **For C program**: GCC compiler and make utility
- **For C# program**: .NET SDK 9.0 or later

## Output

When executed, all scripts will output:
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

# Test TypeScript script
cd Tests
node test_hello_typescript.js

# Test C program
cd Tests
./test_hello_c.sh

# Test C# program
cd Tests
./test_hello_csharp.sh
```

The tests verify that each script/program produces the expected "hello world!" output.

## Getting Started

1. Clone this repository
2. Navigate to the project directory
3. Run the script using one of the methods described in the Usage section

## License

This project is open source and available under the [MIT License](LICENSE).