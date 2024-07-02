#!/bin/bash

echo "------------------------------------------------------------"
echo "Running Post Start Script"
echo "Current Directory: $(pwd)"
echo "------------------------------------------------------------"

set -x

# Pull ssl_tools if not already present
if [ ! -d "ssl_tools" ]; then
    echo "Cloning ssl_tools..."
    git clone git@github.com:otavioon/ssl_tools.git ssl_tools
fi

# Install ssl_tools
echo "Installing ssl_tools..."
cd ssl_tools
pip install -e .


echo "------------------------------------------------------------"
echo "Post Start Script Complete"
echo "------------------------------------------------------------"
 
