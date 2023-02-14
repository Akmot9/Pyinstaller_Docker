#!/bin/bash
echo "pyinstaller :"

# Get the input script path from the command line argument
INPUT_SCRIPT=$1
echo "script : $1"
# Use PyInstaller to create a standalone executable
pyinstaller --noconfirm --onefile --console $INPUT_SCRIPT

pwd
ls -la
ls dist

# Copy the dist folder to a directory on the host machine
cp -r dist/* /data

