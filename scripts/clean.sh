#!/bin/bash

if [ -f "pubspec.yaml" ]; then
    echo "Flutter project detected. Running flutter clean..."
    flutter clean
else
    echo "No Flutter project detected. Skipping flutter clean..."
fi

exit 0
