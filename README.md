# LightBar
***A lightweight, everyday-use bar made in QML/Quickshell.***

>This is not a shell.

## Description
*This bar is for minimalist users/sysadmins that wants or needs
minimal ram or cpu overhead, like ***a "dwl of Quickshell bars***. 
It is used to check time and date, workspace status, 
volume, battery, and brightness. It also includes a popup for 
ram and cpu usage.*

For other tools such as an app launcher or notification center, this bar
does not include one, because it isn't a shell, and it will make it bloated.
You can use swaync (a notification center) or fuzzel (an app launcher), etc.

## Installation
**Please read the stuff below. Blindly copying and 
pasting commands may lead to issues.**

### STEP 1: Clone this repo:
```bash
# 1. Clone 
git clone https://github.com/serendipityfrinz/lightbar

# 2. Enter the repo
cd lightbar
```

### STEP 2: Copy the files:
```bash
# 1. Copy the bar files and code (!! MANDATORY !!)
mkdir -p ~/.config/quickshell/lightbar
cp -r source/. ~/.config/quickshell/lightbar

# 2a. Also copy the matugen files (very recommended)
cp -r matugen/ ~/.config/matugen

# 2b. If you previously used matugen, do this
cp -r matugen/assets/* ~/.config/matugen/assets
```

### STEP 2.5: If you followed 2b of step 2, do this:
```bash
# Enter the file using your text editor and copy it
# Example used: nano
nano matugen/config.toml
```

You should see something like this:

```toml
[templates.lightbar]
input_path = '~/.config/matugen/assets/lightbar-Theme.qml.in'
output_path = '~/.config/quickshell/lightbar/config/Theme.qml'
```

If you see the file like that, copy all of it, then append it 
in ~/.config/matugen/config.toml.

> [!WARNING]
>If you do not see it like that, inform me by creating an issue.

### STEP 2.7: If you followed step 2.5, continue with this:
```bash
# Generate the theme file
matugen image <your_folder>/<your_wallpaper>
```

Replace <your_folder> with the folder of your application, 
and <your_wallpaper> with your wallpaper image.

Some colors will pop up. These are probably the primary leading 
color (i don't know what they are either :3), so please read and
choose the color you like.

### STEP 3: Edit the configuration:
```bash
# Example used: nano
nano ~/.config/quickshell/lightbar/config/Config.qml
```

*You can edit out the comments (you should) or leave it as-is.*

So, you can see some stuff and variables (the stuff that starts
with "property") in there. The comments are a guide. Edit the variables
according to the comments. Quickshell hot-reloads, so there's no worry
restarting Quickshell if you edit after a while.

> [!IMPORTANT]
> If you followed step 2.5 and step 2.7, or set up matugen of lightbar,
please switch useMatugen to true.

### STEP 4: Autostart lightbar:
Open up your window manager configuration and add

***"quickshell -c lightbar"***

as the autostart command.

> [!TIP]
> You can search the website/documentary of your window manager
to know how to autostart apps in your window manager

> [!CAUTION]
> For dwl, you need the ipc patch and the dwlmsg tool.
see [dwlmsg](https://codeberg.org/julmajustus/dwlmsg) and
[dwl IPC patch](https://codeberg.org/dwl/dwl-patches/src/branch/main/patches/ipc)

### Something missing?
*Are some steps missing in this installation guide?
Please issue this. This README.md was made when i mind-blocked.*

## Updating
***I don't have the intellectual ability to wire up an updater script, so
just check GitHub once in a while :)***

## Configuration
***Literally just edit ~/.config/quickshell/lightbar/config/Config.qml, simple 
as that.***

## Debugging
### To see the logs:
```bash
qs log -c lightbar
```

### To restart lightbar:
```bash
pkill quickshell && qs -c lightbar &
```

> [!NOTE]
> If you deviated from step 4 and put "qs -c lightbar" 
instead, put "pkill qs" instead of "pkill quickshell".

### Facing this?
```txt
ERROR: Failed to load configuration
ERROR:   caused by @shell.qml[7:3]: Type Bar unavailable
ERROR:   caused by @modules/Bar.qml[4:1]: module "../config/" is not installed
```

It is probably because cp somehow missed the "config" folder.
You can fix it by copying config inside source standalone into
~/.config/quickshell/lightbar/.

## License
**AGPL-3.0 (GNU Affero General Public License 3.0)**

See [LICENSE](LICENSE)
