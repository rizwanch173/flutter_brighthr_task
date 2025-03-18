#!/bin/bash

# Navigate to the directory where Dependency-Check is located
cd /home/ec2-user/dependency-check

# Run Dependency-Check with the desired project name and scan path
./bin/dependency-check.sh --project flutter_brighthr_taskment --scan /arka-frontend

# Handle the Dependency-Check results as needed
# E.g., send the results to a central location, generate reports, etc.