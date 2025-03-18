#!/bin/bash
export PATH=$PATH:/opt/flutter/bin
cd /arka-frontend

# Check for the presence of test files
if ls test/*_test.dart 1> /dev/null 2>&1; then
    flutter test
else
    echo "No test files found. Skipping tests."
    exit 0  # Explicitly exit with a success status
fi
