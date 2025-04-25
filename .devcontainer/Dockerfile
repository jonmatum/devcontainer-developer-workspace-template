# Minimal universal DevContainer base image
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Optional: Set up dependencies commonly needed by features
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
    gnupg \
    software-properties-common \
    bash-completion \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Optional: Create workspace folder (DevContainers will mount to /workspaces by default)
RUN mkdir -p /workspaces

# Set working directory
WORKDIR /workspaces

# Default user for most DevContainers
USER vscode

CMD ["bash"]