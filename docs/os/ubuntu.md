# Ubuntu

Ubuntu is the first Linux target for this documentation.

## Important rule

Ubuntu behavior depends on which keyboard is connected.

| Context | Expected behavior |
| --- | --- |
| Moonlander connected | macOS-style layout through Moonlander firmware plus future user `systemd` profile notes. |
| Ergodox EZ connected | macOS-style layout through Ergodox firmware plus future user `systemd` profile notes. |
| Built-in laptop keyboard only | Native laptop keyboard layout and behavior. |

## To document later

- Desktop environment and display server: GNOME/KDE, Wayland/X11.
- Keyboard layout selected in Ubuntu settings.
- User `systemd` services triggered by keyboard connection state.
- Any `udev`, `xkb`, `setxkbmap`, `keyd`, `kmonad`, or interception tools if used.
- Differences between external keyboard and laptop hotkeys.
