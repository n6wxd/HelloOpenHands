# Makefile for HelloOpenHands C program

CC = gcc
CFLAGS = -Wall -Wextra -std=c99
TARGET = hello
SOURCE = hello.c

# Default target
all: $(TARGET)

# Build the hello executable
$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCE)

# Clean up compiled files
clean:
	rm -f $(TARGET)

# Run the program
run: $(TARGET)
	./$(TARGET)

# Test the program
test: $(TARGET)
	@echo "Testing C program..."
	@if [ "$$(./$(TARGET))" = "hello world!" ]; then \
		echo "✓ PASS: C program produces correct output"; \
	else \
		echo "✗ FAIL: C program produces incorrect output"; \
		exit 1; \
	fi

# Phony targets
.PHONY: all clean run test