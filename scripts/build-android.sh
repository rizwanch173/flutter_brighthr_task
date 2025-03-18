#!/bin/bash

#Set paths for Flutter and Android SDK
export PATH=$PATH:/opt/flutter/bin:/usr/local/android-sdk/cmdline-tools/cmdline-tools/bin:/usr/local/android-sdk/platform-tools

#Explicitly set ANDROID_HOME
export ANDROID_HOME=/usr/local/android-sdk

#Navigate to your project directory
cd /arka-frontend

#Build the APK
flutter build apk