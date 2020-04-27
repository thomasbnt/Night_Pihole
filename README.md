[![Discord](https://img.shields.io/discord/367753345575944221?color=%237289DA&label=Join%20us&logo=Discord&logoColor=white&style=for-the-badge)](https://discord.gg/9gcxwVY)
[![Support me on BMC](https://img.shields.io/badge/Support%20me-☕-orange.svg?style=for-the-badge)](https://www.buymeacoffee.com/thomasbnt)
[![Twitter Follow](https://img.shields.io/twitter/follow/Hyprimort?color=%231DA1F2&label=Follow%20me&logo=Twitter&style=for-the-badge)](https://twitter.com/Hyprimort)

# Night Pi-hole
Custom dark theme CSS for Pi-hole to replace skin-blue AdminLTE theme.

❗ Created for [Pi-hole](https://github.com/pi-hole/pi-hole).

![Screenshot Preview Dashboard](preview_dashboard.png)

---

## Install
Type the following commands into SSH, line by line.

```bash
cd /var/www/html/admin/style/vendor/
sudo git clone https://github.com/thomasbnt/Night_Pihole.git
cd Night_Pihole
sudo chmod +x install.sh
sudo ./install.sh
```

## Uninstall/Revert
Type the following commands into SSH, line by line.

```
cd /var/www/html/admin/
sudo git reset --hard
```

---

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.



[💛 Pi-hole](https://github.com/topics/pihole)
