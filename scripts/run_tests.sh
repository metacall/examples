#!/bin/bash

# Function to run npm tests in a directory
# Usage: run_npm_tests <directory_path>
run_npm_tests() {
  local directory="$1"
  
  if [ -d "$directory" ]; then
    echo "Running npm tests in $directory"
    cd "$directory" || exit 1
    npm install  # Install dependencies
    npm test     # Run npm tests
    cd - >/dev/null || exit 1
  else
    echo "Directory $directory not found."
  fi
}

# Run npm tests for each cloned repository
echo "Running npm tests for MetaCall examples..."

# Run npm tests for core examples repository
run_npm_tests "examples/examples-core"

# Run npm tests for FaaS examples repository
run_npm_tests "examples/examples-faas"

echo "npm tests execution complete."
