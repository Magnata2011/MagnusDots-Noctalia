#!/usr/bin/env bash

set -e

# ==========================================
# Magnus HyprDots
# Installation Script
# ==========================================

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config/hypr"

echo "=========================================="
echo "        Magnus HyprDots Installer"
echo "=========================================="
echo

# ------------------------------------------
# Check Arch Linux
# ------------------------------------------

if [[ ! -f /etc/arch-release ]]; then
    echo "Erro: este instalador foi feito para Arch Linux."
    exit 1
fi

echo "[1/6] Verificando sistema..."
echo

# ------------------------------------------
# Request sudo password once
# ------------------------------------------

echo "O instalador precisa de privilégios administrativos."
echo "Digite sua senha quando solicitado."
echo

sudo -v

# Keep sudo authentication alive
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" 2>/dev/null || exit
done 2>/dev/null &

SUDO_KEEPALIVE_PID=$!

trap 'kill "$SUDO_KEEPALIVE_PID" 2>/dev/null || true' EXIT

echo
echo "Autenticação concluída."
echo

# ------------------------------------------
# Create Hyprland config directory
# ------------------------------------------

echo "[2/6] Verificando configuração do Hyprland..."

if [[ ! -d "$CONFIG_DIR" ]]; then
    echo "Diretório ~/.config/hypr não encontrado."
    echo "Criando..."

    mkdir -p "$CONFIG_DIR"

    echo "Diretório criado."
else
    echo "Diretório ~/.config/hypr já existe."
    echo "Continuando..."
fi

echo

# ------------------------------------------
# Install required packages
# ------------------------------------------

echo "[3/6] Instalando dependências..."

PACKAGES=(
    hyprland
    kitty
    dolphin
    fish
    firefox
    kate
    pipewire
    wireplumber
    playerctl
    brightnessctl
    pavucontrol
    networkmanager
)

sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"

echo
echo "Dependências instaladas."
echo

# ------------------------------------------
# Install configuration
# ------------------------------------------

echo "[4/6] Instalando Magnus HyprDots..."

cp "$REPO_DIR/hyprland.lua" "$CONFIG_DIR/"

mkdir -p "$CONFIG_DIR/sources"

cp -r "$REPO_DIR/sources/"* "$CONFIG_DIR/sources/"

echo "Configuração copiada."
echo

# ------------------------------------------
# Permissions
# ------------------------------------------

echo "[5/6] Ajustando permissões..."

chmod -R u+rwX "$CONFIG_DIR"

echo "Permissões configuradas."
echo

# ------------------------------------------
# Finish
# ------------------------------------------

echo "[6/6] Finalizando..."

echo
echo "=========================================="
echo " Magnus HyprDots instalado com sucesso!"
echo "=========================================="
echo
echo "Configuração:"
echo "  $CONFIG_DIR"
echo
echo "Para iniciar:"
echo "  Hyprland"
echo
echo "Para recarregar:"
echo "  hyprctl reload"
echo
