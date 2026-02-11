# [Docker - Gnome Shell Extension](https://extensions.gnome.org/extension/5103/docker/)

The objective is to create and manage containers from a tray icon.

## Features

-   Manage Docker containers and images from the GNOME Shell panel
-   Support for Docker Compose projects
-   Compatible with Docker API version 1.45 with automatic version negotiation
-   Works with Docker on Ubuntu using `/var/run/docker.sock`

# Install

## Dependencies

-   gnome-shell-extension
-   gettext

```bash
git clone git@gitlab.com:stickman_0x00/gnome_shell_extension_docker.git
cd gnome_shell_extension_docker
make install
```

# Test

## Wayland

```bash
make run #dbus-run-session -- gnome-shell --nested --wayland
```

## Xorg

```bash
make reload
```

# TODO:

-   [ ] Popup to ask for arguments when starting a new image.
-   [ ] Translate schemas description/title.
-   [ ] Organizing folders/components/etc.
-   [ ] Instead of using a dropdown, it might be better to display the information on a separate screen within the panel, with an option to go back. Would that be possible?
-   [ ] Run docker with ENVIROMENT VARIABLES (Issue #15)
-   [ ] Add an icon (logo) option that respects light/dark mode for consistency (Issue #14)
-   [ ] Add options to hide icons when docker not running (Issue #17)

# Resources

-   https://gjs.guide/extensions/
-   https://gjs-docs.gnome.org/
-   http://justperfection.channel.gitlab.io/how-to-create-a-gnome-extension-documentation/Document.html
-   https://wiki.gnome.org/Attic/GnomeShell/Extensions/Writing
-   [misc.extensionUtils](https://gitlab.gnome.org/GNOME/gnome-shell/blob/main/js/misc/extensionUtils.js)
-   [ui.modalDialog](https://gitlab.gnome.org/GNOME/gnome-shell/blob/main/js/ui/modalDialog.js)
-   [ui.panelMenu](https://gitlab.gnome.org/GNOME/gnome-shell/blob/main/js/ui/panelMenu.js)
-   [ui.popupMenu](https://gitlab.gnome.org/GNOME/gnome-shell/blob/main/js/ui/popupMenu.js)
-   https://gitlab.gnome.org/GNOME/gjs/-/blob/master/doc/Mapping.md
-   https://gitlab.gnome.org/GNOME/gjs/-/blob/master/doc/Modules.md
-   https://extensions.gnome.org/extension/1864/hakan-baysal-onur-agtas/
-   https://gitlab.gnome.org/jrahmatzadeh/just-perfection/-/tree/main/scripts
-   [Gtk Examples](https://python-gtk-3-tutorial.readthedocs.io/en/latest/)
-   [How to Create a GNOME Extension](https://medium.com/@justperfection.channel/how-to-create-a-gnome-extension-eb31b12e78d5)
