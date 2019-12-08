[![Discord Server](https://flat.badgen.net/badge/Join/Discord%20server/7289DA?icon=discord)](https://thomasbnt.fr/discord/?utm_source=link_github?utm_medium=github)
[![Support me on Patreon](https://flat.badgen.net/badge/Be/donator/F96854?icon=patreon)](https://www.patreon.com/thomasbnt)
[![Follow me on Twitter](https://flat.badgen.net/badge/Follow/Me/33A1F2?icon=twitter)](https://twitter.com/Hyprimort)
[![MIT](https://flat.badgen.net/github/license/thomasbnt/Night_Pihole)](LICENSE)

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
cd /var/www/html/admin/style/vendor/
sudo git reset --hard
```

---

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.



[💛 Pi-hole](https://github.com/topics/pihole)
