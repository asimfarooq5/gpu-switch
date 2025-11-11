#!/usr/bin/env bash
# install.sh — Installer for gpu-power-switch

set -e

SCRIPT_PATH="/usr/local/bin/gpu-switch"
SERVICE_PATH="/etc/systemd/system/gpu-switch.service"

echo "[INFO] Installing gpu-switch..."
sudo cp gpu-switch "$SCRIPT_PATH"
sudo chmod +x "$SCRIPT_PATH"

echo "[INFO] Installing systemd service..."
sudo cp gpu-switch.service "$SERVICE_PATH"
sudo systemctl daemon-reload
sudo systemctl enable gpu-switch.service
sudo systemctl start gpu-switch.service

echo "[DONE] gpu-power-switch installed successfully!"
echo "Service: enabled and running (auto GPU switching)"
echo "Log file: /var/log/gpu-switch.log"
echo
echo "Commands:"
echo "  sudo gpu-switch --gpu-integrated"
echo "  sudo gpu-switch --gpu-dedicated"
echo "  sudo gpu-switch --status"

