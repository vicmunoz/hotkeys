# hotkeys

A personal, searchable source of truth for hotkeys across operating systems, programmable keyboards, terminal tools, browser extensions, editors, automation, and workflows.

The project is built around a keyboard-first environment where **Moonlander** and **Ergodox EZ** are the primary keyboards. Both currently use a macOS-oriented layout. Linux, especially Ubuntu, is also part of the system and will be documented with keyboard-profile differences over time.

## Tooling used

- **MkDocs**: static documentation generator.
- **Material for MkDocs**: documentation theme, search, navigation, dark mode, and key rendering.
- **Markdown**: all pages are plain text.
- **Git**: version control.
- **GitHub Pages**: static hosting.
- **GitHub Actions**: deployment automation.
- **pymdownx.keys**: keyboard notation such as `++cmd+t++`.
- **Tags and metadata**: platform, hardware context, custom/default, frequency, and status.
- **Workflow pages**: cross-application references for navigation, tabs, panes, and windows.

## Keyboard behavior model

This repository documents behavior by **context**, not just by operating system.

| Context | Expected behavior |
| --- | --- |
| Moonlander plugged in | System follows the Moonlander macOS-style layout and any OS-specific automation for that device. |
| Ergodox EZ plugged in | System follows the Ergodox macOS-style layout and any OS-specific automation for that device. |
| Built-in laptop keyboard only | System follows the laptop keyboard's native/default layout. |
| Ubuntu/Linux with external keyboard | May behave differently due to custom user `systemd` services. These profiles are documented under `automation/systemd-keyboard-profiles.md`. |

## Quick start

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
mkdocs serve
```

Open the local URL printed by MkDocs, usually `http://127.0.0.1:8000/`.

## Build

```bash
mkdocs build
```

The generated static site is written to `site/`.

## Deploy with GitHub Pages

This repo includes `.github/workflows/deploy.yml`.

1. Push the repository to GitHub.
2. Go to **Settings -> Pages**.
3. Set the source to **GitHub Actions**.
4. Push to `main`.

## Add a new page

Copy the page template:

```bash
cp docs/page-templates/shortcut-page-template.md docs/terminal/new-tool.md
```

Then add the page to `mkdocs.yml` under `nav`.

## Recommended entry format

```markdown
| Shortcut | Action | Type | Frequency | Notes |
| --- | --- | --- | --- | --- |
| ++cmd+t++ | New tab | Default | Daily | Native app shortcut |
```

Use pages for tools, and use workflow pages to compare equivalent actions across tools.

## Initial real sections

- Hardware: Ergodox EZ, Moonlander, laptop keyboard behavior
- OS: macOS, Linux, Ubuntu
- Automation: Hammerspoon, future systemd keyboard profiles
- Window manager: Amethyst
- Terminal: Kitty, tmux
- Editors: Neovim
- Browsers: Brave, Vimium for Brave
