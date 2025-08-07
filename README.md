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

---

## XAMPP
Start XAMPP
```bash
sudo /opt/lampp/lampp start
```

End XAMPP
```bash
sudo /opt/lampp/lampp stop
```

---

## Error XAMPP (another web server already running, atau 80/443 port is already)

Check who use a port 80
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

## Dasar
Create Folder
```bash
mkdir
```

Delete Folder
```bash
rm -r 
```

Create File
```bash
touch
```

Delete File
```bash
rm
```

Edit File with Terminal
```bash
nano
```

Search CLI
```bash
history | grep
```

Search CLI
```bash
CTRL + R
```
