# HelloOpenHands

A comprehensive "Hello World" project demonstrating basic programming across 17 different languages.

[![Languages](https://img.shields.io/badge/languages-17-blue.svg)](#supported-languages)
[![Tests](https://img.shields.io/badge/tests-passing-green.svg)](#testing)
[![Version](https://img.shields.io/badge/version-v2.6-orange.svg)](#version-history)

## Description

This project contains simple "Hello World" scripts in bash, Python, TypeScript, JavaScript (Node.js), C, C#, Rust, Go, Java, F#, VB.NET, Ruby, Perl, Lua, Clojure, Haskell, and ARM64 Assembly that print "hello world!" to the console. It serves as a basic example of programming in different languages and can be used as a starting point for learning programming.

## Supported Languages

| Language | File | Runtime/Compiler | Command |
|----------|------|------------------|---------|
| Bash | `hello.sh` | Bash shell | `./hello.sh` |
| Python | `hello.py` | Python 3.x | `python3 hello.py` |
| TypeScript | `hello.ts` | Node.js | `node hello.ts` |
| JavaScript | `hello.js` | Node.js | `node hello.js` |
| C | `hello.c` | GCC + Make | `make run` |
| C# | `hello.cs` | .NET SDK | `dotnet run` |
| Rust | `hello.rs` | Rust + Cargo | `cargo run` |
| Go | `hello.go` | Go compiler | `go run hello.go` |
| Java | `Hello.java` | JDK | `javac Hello.java && java Hello` |
| F# | `hello.fsx` | .NET SDK | `dotnet fsi hello.fsx` |
| VB.NET | `hello.vb` | .NET SDK | `dotnet run --project hello_vb.vbproj` |
| Ruby | `hello.rb` | Ruby interpreter | `ruby hello.rb` |
| Perl | `hello.pl` | Perl interpreter | `perl hello.pl` |
| Lua | `hello.lua` | Lua interpreter | `lua hello.lua` |
| Clojure | `hello.clj` | Clojure CLI | `clojure -M hello.clj` |
| Haskell | `hello.hs` | GHC | `runhaskell hello.hs` |
| ARM64 Assembly | `hello.s` | Xcode CLI Tools | `as hello.s -o hello.o && clang hello.o -o hello_asm && ./hello_asm` |

## Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/n6wxd/HelloOpenHands.git
   cd HelloOpenHands
   ```

2. **Run any language (example with Python):**
   ```bash
   python3 hello.py
   ```

3. **Run all tests:**
   ```bash
   cd Tests
   ./run_all_tests.sh
   ```

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
- `hello.vb` - VB.NET program that outputs "hello world!"
- `hello.rb` - Ruby script that outputs "hello world!"
- `hello.pl` - Perl script that outputs "hello world!"
- `hello.lua` - Lua script that outputs "hello world!"
- `hello.clj` - Clojure script that outputs "hello world!"
- `hello.hs` - Haskell program that outputs "hello world!"
- `hello.s` - ARM64 Assembly program that outputs "hello world!"
- `hello.csproj` - .NET project file for the C# program
- `hello_vb.vbproj` - .NET project file for the VB.NET program
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
  - `test_hello_vbnet.sh` - Test for the VB.NET program
  - `test_hello_ruby.sh` - Test for the Ruby script
  - `test_hello_perl.sh` - Test for the Perl script
  - `test_hello_lua.sh` - Test for the Lua script
  - `test_hello_clojure.sh` - Test for the Clojure script
  - `test_hello_haskell.sh` - Test for the Haskell program
  - `test_hello_assembly.sh` - Test for the ARM64 Assembly program
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

### VB.NET Program

To run the VB.NET program using the .NET runtime:

```bash
dotnet run --project hello_vb.vbproj
```

### Ruby Script

To run the Ruby script:

```bash
ruby hello.rb
```

Or if it has execute permissions:

```bash
./hello.rb
```

### Perl Script

To run the Perl script:

```bash
perl hello.pl
```

Or if it has execute permissions:

```bash
./hello.pl
```

### Lua Script

To run the Lua script:

```bash
lua hello.lua
```

Or if it has execute permissions:

```bash
./hello.lua
```

### Clojure Script

To run the Clojure script:

```bash
clojure -M hello.clj
```

Or if it has execute permissions:

```bash
./hello.clj
```

### Haskell Program

To run the Haskell program using runhaskell:

```bash
runhaskell hello.hs
```

Or if it has execute permissions:

```bash
./hello.hs
```

To compile and run the Haskell program:

```bash
ghc hello.hs
./hello
```

To clean up compiled files:

```bash
rm -f hello hello.hi hello.o
```

### ARM64 Assembly Program

To run the ARM64 Assembly program on macOS (requires Xcode Command Line Tools):

```bash
# Assemble and link
as hello.s -o hello.o
clang hello.o -o hello_asm

# Run the program
./hello_asm

# Clean up
rm hello.o hello_asm
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
- **For VB.NET program**: .NET SDK 9.0 or later
- **For Ruby script**: Ruby interpreter (usually pre-installed on macOS and Linux)
- **For Perl script**: Perl interpreter (usually pre-installed on macOS and Linux)
- **For Lua script**: Lua interpreter (install with `brew install lua` on macOS or package manager on Linux)
- **For Clojure script**: Clojure CLI tools (install with `brew install clojure/tools/clojure` on macOS)
- **For Haskell program**: GHC (Glasgow Haskell Compiler) and Cabal (install with `brew install ghc cabal-install` on macOS)
- **For ARM64 Assembly program**: Xcode Command Line Tools (includes `as` assembler and `clang` for linking)

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

# Test VB.NET program
cd Tests
./test_hello_vbnet.sh

# Test Ruby script
cd Tests
./test_hello_ruby.sh

# Test Perl script
cd Tests
./test_hello_perl.sh

# Test Lua script
cd Tests
./test_hello_lua.sh

# Test Clojure script
cd Tests
./test_hello_clojure.sh

# Test Haskell program
cd Tests
./test_hello_haskell.sh

# Test ARM64 Assembly program
cd Tests
./test_hello_assembly.sh
```

The tests verify that each script/program produces the expected "hello world!" output.

## Project Statistics

- **Languages Supported:** 17
- **Test Coverage:** 100% (17/17 languages tested)
- **Total Files:** 35+ (source files, tests, documentation, build configs)
- **Build Systems:** 4 (Make, .NET, Cargo, Go modules)
- **Platforms Tested:** macOS (with cross-platform compatibility)

## Version History

This project follows semantic versioning with each major language addition:

- **v1.0** - Initial bash script implementation
- **v1.1** - Added Python support
- **v1.2** - Added TypeScript support  
- **v1.3** - Added C support with Makefile build system
- **v1.4** - Added C# support with .NET project system
- **v1.5** - Added Rust support with Cargo build system
- **v1.6** - Added Go support with go build/run
- **v1.7** - Added Java support with javac/java compilation
- **v1.8** - Added JavaScript (Node.js) support
- **v1.9** - Added F# support with .NET F# Interactive
- **v2.0** - Added VB.NET support with .NET project system
- **v2.1** - Added ARM64 Assembly support for macOS M1
- **v2.2** - Added Ruby support with Ruby interpreter
- **v2.3** - Added Perl support with Perl interpreter
- **v2.4** - Added Lua support with Lua interpreter
- **v2.5** - Added Clojure support with Clojure CLI
- **v2.6** - Added Haskell support with GHC and runhaskell

Each version is tagged in Git for easy checkout and reference.

## Contributing

Contributions are welcome! When adding a new language implementation:

1. **Follow the established patterns:**
   - Create source file with consistent output format ("hello world!")
   - Add build/execution instructions to README
   - Create test script following naming convention (`test_hello_<language>.sh`)
   - Update documentation and roadmap
   - Integrate with master test runner

2. **Testing requirements:**
   - All implementations must pass automated tests
   - Test scripts should verify exact output match
   - Include both compilation (if needed) and execution testing

3. **Documentation:**
   - Update README.md with usage instructions
   - Update ROADMAP.md to mark language as completed
   - Include requirements and dependencies

## Getting Started

1. Clone this repository
2. Navigate to the project directory
3. Run the script using one of the methods described in the Usage section

For detailed roadmap and planned features, see [ROADMAP.md](ROADMAP.md).

## License

This project is open source and available under the [MIT License](LICENSE).