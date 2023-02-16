#!/bin/bash
echo "pyinstaller :"

# Get the input script path from the command line argument
INPUT_SCRIPT=$1
INPUT_IMG_FOLDER=$2
INPUT_BASH_SCRIPT=$3

echo "script : $1"
echo "img folder : $2"
echo "bash script : $3"
echo "|---------------|"

# Use PyInstaller to create a standalone executable
pyinstaller --noconfirm --onefile --console --add-data $3:. --add-data $INPUT_IMG_FOLDER:img/ $INPUT_SCRIPT

pwd
ls -la
ls dist

# Copy the dist folder to a directory on the host machine
cp -r dist/* /data

