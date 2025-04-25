#!/bin/bash
set -e

USERNAME="${_REMOTE_USER:-vscode}"
INSTALL_GLOBAL="${GLOBAL:-true}"

echo "Installing pre-commit for user: $USERNAME..."

# Ensure Python and pip are available
if ! command -v python3 >/dev/null 2>&1; then
    echo "Installing Python as it is required for pre-commit..."
    apt-get update
    apt-get install -y python3 python3-pip
fi

if ! command -v pip3 >/dev/null 2>&1; then
    echo "Installing pip..."
    apt-get install -y python3-pip
fi

# Check if pre-commit is already installed
if su - "$USERNAME" -c "command -v pre-commit" >/dev/null 2>&1; then
    echo "pre-commit is already installed. Skipping installation."
else
    echo "Installing pre-commit..."
    if [[ "$INSTALL_GLOBAL" == "true" ]]; then
        su - "$USERNAME" -c "pip3 install --user pre-commit"
    else
        su - "$USERNAME" -c "pip3 install pre-commit"
    fi
fi

# Symlink to /usr/local/bin if installed with --user and not in PATH
if [[ "$INSTALL_GLOBAL" == "true" ]]; then
    USER_BIN="/home/$USERNAME/.local/bin"
    PRECOMMIT_BIN="$USER_BIN/pre-commit"
    if [ -f "$PRECOMMIT_BIN" ] && [ ! -f "/usr/local/bin/pre-commit" ]; then
        echo "Linking pre-commit to /usr/local/bin"
        ln -sf "$PRECOMMIT_BIN" /usr/local/bin/pre-commit
    fi
fi

# Final check
echo "Verifying pre-commit installation:"
su - "$USERNAME" -c "pre-commit --version" || echo "Warning: pre-commit installation check failed."
