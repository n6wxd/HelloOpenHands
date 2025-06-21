# GitHub Issue Template: Add Rust version of hello program

**Title:** Add Rust version of hello program

**Labels:** enhancement, good first issue

**Body:**

## Description

Add a Rust implementation of the hello world program to complement the existing bash, Python, TypeScript, and C versions.

## Tasks

- [ ] Create `hello.rs` source file that outputs "hello world!"
- [ ] Add Cargo.toml configuration file for Rust project structure
- [ ] Create test script `Tests/test_hello_rust.sh` to verify Rust program
- [ ] Update `Tests/run_all_tests.sh` to include Rust test
- [ ] Update README.md with Rust usage instructions and requirements
- [ ] Add Rust build artifacts to .gitignore (target/ directory)

## Implementation Notes

- Use `println!("hello world!");` for output
- Follow Rust naming conventions and best practices
- Ensure consistent output format with other language implementations
- Include both `cargo run` and compiled binary execution methods

## Acceptance Criteria

- Rust program compiles without warnings using `cargo build`
- Program outputs exactly "hello world!" (matching other implementations)
- All tests pass including the new Rust test
- Documentation is updated with Rust-specific instructions
- Follows the same testing pattern as other language implementations

## Getting Started

1. Install Rust toolchain (rustc, cargo)
2. Initialize Cargo project or create standalone .rs file
3. Implement hello world functionality
4. Create comprehensive test script
5. Update documentation and test runner

This issue provides a good opportunity for someone to learn Rust while contributing to the project!