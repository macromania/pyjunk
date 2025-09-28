FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Adds ~/.local/bin to the root user’s PATH permanently.
# If you install CLI tools globally during the Docker build (or via a Feature),
# leaving this ensures those binaries stay discoverable for any non-VS Code usage. i.e. CI/CD
ENV PATH="/root/.local/bin/:$PATH"

# Creates deterministic, tidy mounts—especially in repos that rebuild frequently.
# If you later pre-build production images, you might unset it to keep interpreter performance optimal.
# Avoids accidental commits of bytecode when version control filters are misconfigured.
ENV PYTHONDONTWRITEBYTECODE=1

# Forces both stdout and stderr to run in unbuffered mode.
# Output is written immediately rather than being buffered (line- or block-based).
# Ideal for development images or services where log immediacy trumps throughput.
ENV PYTHONUNBUFFERED=1