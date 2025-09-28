# PyJunk - AI Engineering System

An AI Engineering system project using Azure AI, AutoGen, and Model Context Protocol (MCP) for intelligent agent-based automation.

## Project Structure

```bash
├── src/                    # Source code
│   ├── __init__.py        # Package initialization
│   └── main.py            # Main application entry point
├── tests/                  # Test files
│   ├── conftest.py        # Test configuration
│   └── test_example.py    # Example tests
├── scripts/               # Utility scripts
│   └── restore.sh         # Restore script
├── htmlcov/              # Coverage reports (generated)
├── .devcontainer/        # Development container configuration
├── pyproject.toml        # Project configuration and tool settings
├── poetry.lock           # Dependency lock file
├── Makefile              # Build automation
└── README.md             # This file
```

## Key Dependencies

### Core AI/ML Libraries

- **Azure AI Projects** (`^1.0.0`) - Azure AI project management
- **Azure AI Agents** (`>=1.2.0b2`) - Azure AI agent framework
- **AutoGen AgentChat** (`^0.7.4`) - Multi-agent conversation framework
- **AutoGen Ext with MCP** (`^0.7.4`) - Extended AutoGen with Model Context Protocol
- **OpenAI** (`^1.109.0`) - OpenAI API client
- **MCP Server Fetch** (`^2025.4.7`) - Model Context Protocol server for web fetching

### Infrastructure & Monitoring

- **Azure Identity** (`^1.25.0`) - Azure authentication
- **OpenTelemetry SDK** (`^1.37.0`) - Observability and tracing
- **Azure Core Tracing OpenTelemetry** - Azure telemetry integration

### Utilities

- **Pydantic Settings** (`^2.10.1`) - Configuration management
- **TikToken** (`^0.11.0`) - Token counting for AI models

## Development Environment

This project uses a comprehensive VS Code Dev Container with:

### Pre-installed Tools

- **Python 3.12** with Poetry for dependency management
- **Node.js 20** for additional tooling
- **Azure CLI** with Azure Functions Core Tools
- **GitHub CLI** for GitHub integration
- **Docker-in-Docker** for containerized development
- **Terraform 1.13.2** for infrastructure as code
- **Git** built from source

### Development Tools

- **Ruff** - Fast Python linter and formatter
- **pytest** - Testing framework with coverage
- **mypy** - Static type checking
- **VS Code Extensions** - Comprehensive extension pack for Python, Azure, and more

## Tool Configuration

All tool configurations are centralized in `pyproject.toml`:

### Ruff (Linting & Formatting)

- Line length: 240 characters
- Target: Python 3.12
- Comprehensive rule set including security (bandit), complexity (mccabe), and import sorting
- Per-file ignores for test files

### Testing (pytest)

- Auto-discovery of test files
- Coverage reporting with HTML output
- Async test support
- Coverage threshold: 80%
- Source tracking from `src/` directory

### Type Checking (mypy)

- Python 3.12 compatibility
- Reasonable strictness with helpful error reporting
- Missing import tolerance for rapid development

### Coverage

- Source tracking with exclusions for test and virtual environment files
- HTML and terminal reporting
- Excludes common non-testable code patterns

## Getting Started

### Prerequisites

- VS Code with Dev Container extension
- Docker Desktop

### Development Setup

1. **Open in Dev Container**: VS Code will automatically detect and offer to reopen in container
2. **Environment Setup**: Container will automatically run post-create scripts
3. **Install Dependencies**:

   ```bash
   poetry install
   ```

4. **Activate Virtual Environment**:

   ```bash
   poetry shell
   ```

### Development Workflow

```bash
# Run tests with coverage
pytest

# Format code
ruff format .

# Lint code
ruff check .

# Type checking
mypy src/

# Run all checks (if using Makefile)
make test
make lint
make format
```

### Environment Variables

The dev container sets:

- `PYTHONPATH` to workspace folder for proper imports
- `WORKSPACE` to workspace folder for scripts
- Python interpreter path to `.venv/bin/python`

### VS Code Configuration

The dev container includes optimized VS Code settings for:

- Python development with intelligent code analysis
- Automatic formatting and import organization on save
- Integrated terminal with Poetry environment activation
- Azure and GitHub integration
- Comprehensive extension pack pre-installed
