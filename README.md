# Zsh Setup Script

This script offers a simple, one-click installer to turn your terminal from Bash into a convenient and colorful Zsh shell. It automatically configures essential plugins, including `zsh-autosuggestions` and `zsh-syntax-highlighting`.

## What this script does

It streamlines the setup of a Zsh terminal by performing the following steps:

1.  **Installs Prerequisites**: Updates system packages and installs `vim`, `git`, `curl`, `wget`, and fonts.
2.  **Configures Git**: Interactively sets up your global Git username and email.
3.  **Installs Zsh**: Installs the Z shell and sets it as your default shell.
4.  **Installs Oh My Zsh**: Sets up the popular Zsh framework.
5.  **Adds Plugins**: Installs and enables `zsh-autosuggestions` and `zsh-syntax-highlighting`.
6.  **Configures .zshrc**: Updates the plugin list (including docker plugins) and adds keybindings for history search (Up/Down arrows).

## When to use

Use this script when you are setting up a fresh Linux or want to quickly upgrade your current terminal to a  Zsh environment.

## How to run

```bash
# 1. Download the script
git clone git@github.com:Cotidie/pretty-zsh-installer.git
cd pretty-zsh-installer

# 2. Run the script
chmod +x install-zsh.sh
./install-zsh.sh

# 3. Follow the prompts to enter your Git details
```

Then restart your terminal or log out and back in to apply the changes.

# Korean Keyboard Setup (fcitx5)

This repository also includes a script to set up the Korean keyboard input method using `fcitx5`.

## What this script does

1.  **Installs fcitx5**: Installs `fcitx5`, `fcitx5-hangul`, and related frontend packages.
2.  **Configures Input Method**: Sets `fcitx5` as the default input method system.
3.  **Sets up Profile**: Creates a default profile with US English and Hangul layouts.
4.  **Configures Shortcuts**: Sets `Shift+Space` and `Right Alt` as toggle keys for switching inputs.

## How to run

```bash
chmod +x install-korean-keyboard.sh
./install-korean-keyboard.sh
```

After running the script, **log out and log back in** for the changes to take effect.
