# Linux

## Fun CLI
1. cmatrix
2. cava
3. nyancat
4. toilet/Figlet
5. asciiquarium
6. icat
7. btop
8. tty-clock -c -C 6 -B
9. neofetch

---

## XAMPP
### Start XAMPP
```bash
sudo /opt/lampp/lampp start
```

### End XAMPP
```bash
sudo /opt/lampp/lampp stop
```

---

## Error XAMPP (another web server already running, or 80/443 port is already)

### Check who use a port 80
```bash
sudo lsof -i :80
sudo ss -tulpn | grep :80
sudo netstat -tuln | grep :80
```

### Shutdown a web server
Apache2
```bash
sudo systemctl stop apache2
```

Nginx
```bash
sudo systemctl stop nginx
```

---

## Basic
### Create Folder
```bash
mkdir <>
```

### Delete Folder
```bash
rm -r <>
```

### Create File
```bash
touch <>
```

### Delete File
```bash
rm <>
```

### Edit File with Terminal
```bash
nano <>
```

### Search CLI
```bash
history | grep <>
```

### Search CLI
```bash
CTRL + R
```

### Copas folder
```bash
cp ~/<>/ /<>/
```

### Check file in folder
```bash
ls <>
```

### Change Ownership
```
```bash
sudo chown [user]:[group] [file/folder]
```

### Fail save file? Change Ownership with Recursive
```bash
sudo chown -R [user]:[group] [file/folder]
```

### Check User
```bash
whoami
```

### Check Group
```bash
id -gn
```

### Check Battery
```bash
acpi
```

## How to view error in Browser
### Add php.ini or add Syntax 
```bash
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
```

## How to Shutdown, Restart, Lock, and Sleep
### Shutdown
```bash
shutdown now
```

### Restart
```bash
shutdown -r now
```

### Sleep / Hibernate
```bash
systemctl hibernate -i
```

### Lock Screen
```bash
loginctl lock-session
```

## How to status, start, end, and search connection
### Status
```bash
nmcli radio wifi
```

### Start
```bash
nmcli radio wifi on
```

### End
```bash
nmcli radio wifi off
```

### Search Connection
```bash
nmtui
```

### Open Folder
```bash
yazi
```

### Rename File
```bash
mv nama_file_lama nama_file_baru
```

## How to use OBS with NVIDIA
### Check NVIDIA
```bash
nvidia-smi
```

### Run OBS
```bash
__NV_PRIME_RENDER_OFFLOAD=1 obs --ozone-platform=x11
```

## Changes intel, nvidia, and hybrid to save battrery
### Intel
```bash
sudo envycontrol -s integrated
```

### Nvidia
```bash
sudo envycontrol -s nvidia
```

### Hybrid
```bash
sudo envycontrol -s hybrid
```

### How Check
```bash
glxinfo | grep "renderer"
```
