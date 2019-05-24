[![Support me on Patreon](https://flat.badgen.net/badge//Support%20me%20on%20Patreon/F96854?icon=patreon)](https://www.patreon.com/thomasbnt)
[![Follow me on Twitter](https://flat.badgen.net/badge//Follow%20me%20on%20Twitter/33A1F2?icon=twitter)](https://twitter.com/Hyprimort)
[![LICENSE](https://flat.badgen.net/github/license/thomasbnt/Night_PiHole)](LICENSE)
[![Voir les Releases](https://flat.badgen.net/github/release/thomasbnt/Night_PiHole)](https://github.com/thomasbnt/Night_PiHole/releases)
![Last commit](https://flat.badgen.net/github/last-commit/thomasbnt/Night_PiHole)


# Night Pi Hole
Custom dark theme CSS for pi-hole to replace skin-blue AdminLTE theme.

❗ Created for use with [pi-hole](https://github.com/pi-hole/pi-hole).

![Screenshot Preview Dashboard](preview_dashboard.png)

---

## Install
Type the following commands into SSH, line by line.

```
cd /var/www/html/admin/style/vendor/
sudo git clone https://github.com/thomasbnt/Night_PiHole.git
sudo rm -f skin-blue.min.css
sudo cp Night_PiHole/skin-blue.min.css .
sudo rm -f AdminLTE.min.css
sudo cp Night_PiHole/AdminLTE.min.css .
sudo rm -rf Night_PiHole
```
Don't forget the trailing " ." on the cp line (it means copy to current directory).

## Uninstall/Revert
Type the following commands into SSH, line by line.

```
cd /var/www/html/admin/style/vendor/
sudo git reset --hard
```

---

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
