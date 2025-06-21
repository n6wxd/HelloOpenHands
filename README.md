# HelloOpenHands

A simple "Hello World" project demonstrating basic scripting in multiple languages.

## Description

This project contains simple "Hello World" scripts in bash, Python, TypeScript, JavaScript (Node.js), C, C#, Rust, Go, Java, and F# that print "hello world!" to the console. It serves as a basic example of programming in different languages and can be used as a starting point for learning programming.

## Files

- `hello.sh` - Bash script that outputs "hello world!"
- `hello.py` - Python script that outputs "hello world!"
- `hello.ts` - TypeScript script that outputs "hello world!"
- `hello.js` - JavaScript (Node.js) script that outputs "hello world!"
- `hello.c` - C program that outputs "hello world!"
- `hello.cs` - C# program that outputs "hello world!"
- `hello.rs` - Rust program that outputs "hello world!"
- `hello.go` - Go program that outputs "hello world!"
- `Hello.java` - Java program that outputs "hello world!"
- `hello.fsx` - F# script that outputs "hello world!"
- `hello.csproj` - .NET project file for the C# program
- `Cargo.toml` - Rust project configuration file
- `Makefile` - Build configuration for the C program
- `Tests/` - Directory containing test files
  - `test_hello_bash.sh` - Test for the bash script
  - `test_hello_python.py` - Test for the Python script
  - `test_hello_typescript.js` - Test for the TypeScript script
  - `test_hello_c.sh` - Test for the C program
  - `test_hello_csharp.sh` - Test for the C# program
  - `test_hello_rust.sh` - Test for the Rust program
  - `test_hello_go.sh` - Test for the Go program
  - `test_hello_java.sh` - Test for the Java program
  - `test_hello_javascript.sh` - Test for the JavaScript program
  - `test_hello_fsharp.sh` - Test for the F# script
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

### JavaScript Script

To run the JavaScript script with Node.js:

```bash
node hello.js
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

### Rust Program

To run the Rust program using Cargo:

```bash
cargo run
```

To build the Rust program without running:

```bash
cargo build
```

To run the compiled binary directly:

```bash
cargo build
./target/debug/hello
```

To build an optimized release version:

```bash
cargo build --release
./target/release/hello
```

To clean build artifacts:

```bash
cargo clean
```

### Go Program

To run the Go program directly:

```bash
go run hello.go
```

To build and run the Go program:

```bash
go build hello.go
./hello
```

To build with a specific output name:

```bash
go build -o hello_go hello.go
./hello_go
```

To clean build artifacts (remove compiled binary):

```bash
rm -f hello
```

### Java Program

To compile and run the Java program:

```bash
javac Hello.java
java Hello
```

To compile and run in one command:

```bash
javac Hello.java && java Hello
```

To clean build artifacts (remove compiled class file):

```bash
rm -f Hello.class
```

### F# Script

To run the F# script using the .NET F# Interactive:

```bash
dotnet fsi hello.fsx
```

## Requirements

- **For bash script**: Bash shell (available on most Unix-like systems including Linux and macOS)
- **For Python script**: Python 3.x
- **For TypeScript script**: Node.js (to run as JavaScript) or TypeScript compiler (optional)
- **For JavaScript script**: Node.js runtime
- **For C program**: GCC compiler and make utility
- **For C# program**: .NET SDK 9.0 or later
- **For Rust program**: Rust toolchain (rustc and cargo)
- **For Go program**: Go compiler and runtime
- **For Java program**: Java Development Kit (JDK) with javac compiler and java runtime
- **For F# script**: .NET SDK 9.0 or later (includes F# Interactive)

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

# Test Rust program
cd Tests
./test_hello_rust.sh

# Test Go program
cd Tests
./test_hello_go.sh

# Test Java program
cd Tests
./test_hello_java.sh

# Test JavaScript program
cd Tests
./test_hello_javascript.sh

# Test F# script
cd Tests
./test_hello_fsharp.sh
```

The tests verify that each script/program produces the expected "hello world!" output.

## Getting Started

1. Clone this repository
2. Navigate to the project directory
3. Run the script using one of the methods described in the Usage section

## License

This project is open source and available under the [MIT License](LICENSE).