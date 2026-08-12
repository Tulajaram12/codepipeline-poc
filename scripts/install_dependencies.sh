#!/bin/bash

set -e

echo "Installing application dependencies..."

cd /opt/codepipeline-poc

python3 -m pip install -r requirements.txt

chmod +x scripts/*.sh

echo "Dependencies installed successfully."
