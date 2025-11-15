# gpu-switch

A lightweight Linux utility for hybrid GPU laptops (Intel + NVIDIA) that enables
manual GPU control or automatic switching based on power state.

## 🚀 Features
- `--gpu-integrated` → Use Intel GPU (power saving)
- `--gpu-dedicated` → Use NVIDIA GPU (performance)
- `--gpu-auto` → Automatically switch GPUs (Intel on battery, NVIDIA on AC)
- `--status` → Show current GPU and daemon status
- Optional systemd service for background auto-switching

## ⚙️ Installation
```bash
git clone https://github.com/xconnio/gpu-power-switch.git
cd gpu-switch
chmod +x install.sh
./install.sh
```

## Example
```bash
sudo gpu-switch --gpu-integrated
sudo gpu-switch --gpu-dedicated
sudo gpu-switch --gpu-auto      # start auto mode manually
sudo gpu-switch --gpu-stop      # stop daemon
sudo gpu-switch --status

```
