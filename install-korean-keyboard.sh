#!/usr/bin/env bash
set -e

echo "== Installing fcitx5 and Hangul =="
sudo apt update
sudo apt install -y \
  fcitx5 \
  fcitx5-hangul \
  fcitx5-config-qt \
  fcitx5-frontend-gtk3 \
  fcitx5-frontend-gtk4 \
  fcitx5-frontend-qt5

echo "== Selecting fcitx5 via im-config =="
im-config -n fcitx5

echo "== Writing fcitx5 profile (English + Hangul) =="

PROFILE_DIR="$HOME/.config/fcitx5"
PROFILE_FILE="$PROFILE_DIR/profile"

mkdir -p "$PROFILE_DIR"

cat > "$PROFILE_FILE" << 'EOF'
[Groups/0]
Name=Default
Default Layout=us
DefaultIM=keyboard-us

[Groups/0/Items/0]
Name=keyboard-us
Layout=us

[Groups/0/Items/1]
Name=hangul
Layout=

[GroupOrder]
0=Default
EOF

echo "== Setting toggle keys: Shift+Space and Right Alt =="

CONF_FILE="$HOME/.config/fcitx5/config"
mkdir -p "$(dirname "$CONF_FILE")"
touch "$CONF_FILE"

# Remove existing TriggerKey if present
sed -i '/^TriggerKey=/d' "$CONF_FILE"

# Set desired toggle keys
echo 'TriggerKey=Shift+space,Alt_R' >> "$CONF_FILE"

echo
echo "✅ Setup complete."
echo "👉 PLEASE LOG OUT and LOG BACK IN to activate fcitx5."