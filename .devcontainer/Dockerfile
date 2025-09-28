FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Creates deterministic, tidy mounts—especially in repos that rebuild frequently.
# If you later pre-build production images, you might unset it to keep interpreter performance optimal.
# Avoids accidental commits of bytecode when version control filters are misconfigured.
ENV PYTHONDONTWRITEBYTECODE=1

# Forces both stdout and stderr to run in unbuffered mode.
# Output is written immediately rather than being buffered (line- or block-based).
# Ideal for development images or services where log immediacy trumps throughput.  
ENV PYTHONUNBUFFERED=1