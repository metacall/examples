#!/bin/bash

# Define the base URL for MetaCall example repositories
BASE_URL="https://github.com/metacall"

# Create a directory to store cloned examples
mkdir -p examples

# Clone example repositories
echo "Cloning MetaCall examples..."

# Clone core examples repository
git clone "${BASE_URL}/examples-core.git" examples/examples-core

# Clone FaaS examples repository
git clone "${BASE_URL}/examples-faas.git" examples/examples-faas

echo "Cloning examples complete."
