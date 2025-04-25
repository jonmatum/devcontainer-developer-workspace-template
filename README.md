# DevContainer Developer Workspace Template

A modern, opinionated, and extensible Dev Container template built for cloud, full-stack, DevOps, and infrastructure developers. Easily reproducible, portable, and ready for work in seconds.

## Features

This template includes support for:

- Shell environment with:
  - Zsh, Oh My Zsh, Powerlevel10k
  - Syntax highlighting and autosuggestions
- AWS CLI v2
- Terraform + tfswitch
- Node.js 20.11.1
- Python 3.11.9 with pipenv support
- OpenTofu (alternative to Terraform)
- Pre-commit hooks with optional global config
- Customizable with flags — toggle each feature as needed

## Installed Tools

- `terraform`, `aws`, `node`, `npm`, `python`, `pip`, `pipenv`, `tofu`, `pre-commit`, `zsh`

## VS Code Extensions

Curated, reputable extensions included:

- Cloud & Infra: `hashicorp.terraform`, `amazonwebservices.aws-toolkit-vscode`, `redhat.vscode-yaml`
- Python: `ms-python.*`, `ms-toolsai.jupyter`
- Node/Web: `dbaeumer.vscode-eslint`, `esbenp.prettier-vscode`, `bradlc.vscode-tailwindcss`
- Shell: `timonwong.shellcheck`, `foxundermoon.shell-format`
- Containers: `ms-azuretools.vscode-docker`
- Git/Collaboration: `eamodio.gitlens`, `ms-vsliveshare.vsliveshare`, `github.vscode-github-actions`
- Markdown & Docs: `bierner.markdown-mermaid`, `streetsidesoftware.code-spell-checker`
- Remote Dev: `ms-vscode-remote.*`
- Extras: `visualstudioexptteam.vscodeintellicode`, `naumovs.color-highlight`

## Getting Started

1. Clone this template:
   ```bash
   gh repo create my-devcontainer --template jonmatum/devcontainer-developer-workspace-template
   ```

2. Open in Visual Studio Code:
   - Open the project
   - Use `Dev Containers: Reopen in Container` from the Command Palette

3. You're ready to go

## Customization

You can modify `devcontainer.json` to:

- Enable/disable features
- Change tool versions
- Add your own custom VS Code extensions

## License

This project is licensed under the [MIT License](LICENSE).

---

> echo 'Pura Vida & Happy Coding!";

