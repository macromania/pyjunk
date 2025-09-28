#!/bin/bash
set -e

echo "🐍 Installing dependencies..."
cd "$WORKSPACE" || { echo "Failed to change directory to $WORKSPACE"; exit 1; }

# Create virtual environment if it doesn't exist
rm -rf .venv
poetry config virtualenvs.in-project true || { echo "Failed to configure Poetry for in-project virtualenv"; exit 1; }

# Check for requirements files
echo "Installing dependencies from pyproject.toml using poetry sync..."
poetry install || { echo "Failed to install dependencies with Poetry"; exit 1; }

echo "✅ All dependencies installed!"