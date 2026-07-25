# systemd keyboard profiles

This page is reserved for Linux/Ubuntu user `systemd` services that change behavior based on whether Moonlander or Ergodox EZ is plugged in.

## Current understanding

- Moonlander and Ergodox EZ use macOS-style layouts.
- When one is connected to Linux/Ubuntu, the system can behave differently because of custom user `systemd` services.
- When neither external keyboard is connected, the built-in laptop keyboard should keep its native behavior.

## To document later

| Topic | Status | Notes |
| --- | --- | --- |
| Service names | Planned | Add exact unit names. |
| Trigger mechanism | Planned | Document whether this uses `udev`, scripts, timers, or another method. |
| Moonlander profile | Planned | Add commands and expected behavior. |
| Ergodox profile | Planned | Add commands and expected behavior. |
| Laptop fallback profile | Planned | Add commands and expected behavior. |
| Debugging commands | Planned | Include `systemctl --user status ...` examples. |

## Suggested command reference

```bash
systemctl --user status <service>
systemctl --user restart <service>
journalctl --user -u <service> -f
```
