#!/usr/bin/env node

var fs = require('fs');
var path = require('path');

function testHelloTypeScript() {
    console.log("Testing hello.ts...");
    
    try {
        // Read the TypeScript file content
        var tsFilePath = path.join(__dirname, '..', 'hello.ts');
        var tsContent = fs.readFileSync(tsFilePath, 'utf8');
        
        // For this simple case, we can verify the TypeScript syntax
        // Since it's just a console.log statement, we can evaluate it directly
        var expectedOutput = "hello world!";
        
        // Check if the file contains the expected console.log statement
        if (tsContent.indexOf('console.log("hello world!")') !== -1) {
            console.log("✓ PASS: hello.ts contains correct output statement");
            
            // Try to run it as JavaScript (since it's valid JS too)
            try {
                // Capture console.log output
                var originalLog = console.log;
                var capturedOutput = '';
                console.log = function(msg) {
                    capturedOutput = msg;
                };
                
                // Execute the TypeScript content as JavaScript
                eval(tsContent);
                
                // Restore console.log
                console.log = originalLog;
                
                if (capturedOutput === expectedOutput) {
                    console.log("✓ PASS: hello.ts executes and produces correct output");
                    return true;
                } else {
                    console.log("✗ FAIL: hello.ts produces incorrect output when executed");
                    console.log("Expected: '" + expectedOutput + "'");
                    console.log("Actual: '" + capturedOutput + "'");
                    return false;
                }
            } catch (execError) {
                console.log("✗ FAIL: hello.ts failed to execute as JavaScript");
                console.log("Error: " + execError.message);
                return false;
            }
        } else {
            console.log("✗ FAIL: hello.ts does not contain expected console.log statement");
            console.log("Expected to find: console.log(\"hello world!\")");
            console.log("File content: " + tsContent);
            return false;
        }
    } catch (err) {
        console.log("✗ ERROR: Failed to read hello.ts");
        console.log("Error: " + err.message);
        return false;
    }
}

if (require.main === module) {
    var success = testHelloTypeScript();
    process.exit(success ? 0 : 1);
}

module.exports = { testHelloTypeScript: testHelloTypeScript };