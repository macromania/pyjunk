#!/bin/bash
set -e

echo "🤖 Scripts are being made executable..."
chmod +x ${WORKSPACE}/scripts/*.sh || { echo "Failed to make scripts executable"; }

echo "🚀 Setting up development environment..."

# Check if Poetry is already installed
if command -v poetry &> /dev/null; then
    echo "✅ Poetry is already installed: $(poetry --version)"
else
    echo "📦 Installing Poetry..."
    curl -sSL https://install.python-poetry.org | python3 -
    
    # Add Poetry to PATH for current session
    export PATH="$HOME/.local/bin:$PATH"
    
    # Add Poetry to PATH permanently for the vscode user
    echo "export PATH='$HOME/.local/bin:$PATH'" >> ~/.bashrc
    echo "export PATH='$HOME/.local/bin:$PATH'" >> ~/.zshrc
    
    echo "✅ Poetry installed: $(poetry --version)"
fi

# Configure Poetry to create virtual environments in project directory
poetry config virtualenvs.in-project true

# Install all dependencies if pyproject.toml exists
if [ -f "pyproject.toml" ]; then
    echo "📦 Installing all dependencies..."
    make restore
else
    echo "ℹ️  No pyproject.toml found, skipping dependency installation"
fi
echo "✅ Development environment setup complete!"