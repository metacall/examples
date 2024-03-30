#!/bin/bash

# Create a directory to store downloaded distributables
mkdir -p distributables

# Define the base URLs for each distributable
BASE_URL_LINUX="https://github.com/metacall/distributable-linux"
BASE_URL_WINDOWS="https://github.com/metacall/distributable-windows"
BASE_URL_MACOS="https://github.com/metacall/distributable-macos/releases"

# Download distributables for Linux
echo "Downloading MetaCall for Linux..."
wget "${BASE_URL_LINUX}/metacall-linux.tar.gz" -O distributables/metacall-linux.tar.gz

# Download distributables for Windows
echo "Downloading MetaCall for Windows..."
wget "${BASE_URL_WINDOWS}/metacall-windows.zip" -O distributables/metacall-windows.zip

# Download distributables for macOS
echo "Downloading MetaCall for macOS..."
wget "${BASE_URL_MACOS}/metacall-macos.tar.gz" -O distributables/metacall-macos.tar.gz

echo "Distributables download complete."
