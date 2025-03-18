#!/bin/bash

# Print the current PATH
echo "PATH is: $PATH"

# Display the location of Flutter
which flutter

# Add Flutter to the PATH
export PATH=$PATH:/opt/flutter/bin

# Navigate to the Flutter project directory
cd /arka-frontend

# Fetch the Flutter dependencies
flutter pub get
