# Linux

Linux support is part of this project and should be documented by distribution/flavor and keyboard context.

## Keyboard behavior model

| Hardware context | Behavior |
| --- | --- |
| Moonlander connected | Uses Moonlander macOS-style layout; may be adjusted by custom user `systemd` services. |
| Ergodox EZ connected | Uses Ergodox macOS-style layout; may be adjusted by custom user `systemd` services. |
| No external keyboard | Uses the laptop's embedded keyboard behavior/layout. |

## Future distributions/flavors

Add a separate page for each distribution or desktop environment when behavior differs.

Suggested examples:

- Ubuntu
- Fedora
- Arch
- Debian
- GNOME
- KDE Plasma
- Wayland-specific behavior
- X11-specific behavior

## Documentation checklist

| Topic | Status | Page |
| --- | --- | --- |
| Ubuntu behavior | WIP | `os/ubuntu.md` |
| systemd keyboard profiles | Planned | `automation/systemd-keyboard-profiles.md` |
| Laptop keyboard native layout | Planned | `hardware/laptop-keyboard.md` |
