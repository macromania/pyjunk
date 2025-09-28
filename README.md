# Autogen Upskilling Project

An AI Engineering system project using Azure AI and AutoGen.

## Project Structure

```bash
├── src/                    # Source code
├── tests/                  # Test files
├── .devcontainer/         # Development container configuration
├── pyproject.toml         # Project configuration and tool settings
└── README.md              # This file
```

## Development Setup

This project uses:

- **Python 3.12** with Poetry for dependency management
- **Ruff** for linting and formatting
- **pytest** for testing with coverage
- **mypy** for type checking
- **VS Code Dev Container** for consistent development environment

## Tool Configuration

All tool configurations are centralized in `pyproject.toml`:

- Ruff (linting/formatting): Line length 240, comprehensive rule set
- pytest: Auto-discovery, coverage reporting, async support
- mypy: Type checking with reasonable strictness
- Coverage: Source tracking with HTML reports

## Getting Started

1. Open in VS Code with Dev Container extension
2. Container will automatically set up the environment
3. Install dependencies: `poetry install`
4. Run tests: `pytest`
5. Format code: `ruff format .`
6. Lint code: `ruff check .`
