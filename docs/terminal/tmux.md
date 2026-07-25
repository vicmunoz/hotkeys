# tmux

## Metadata

| Field | Value |
| --- | --- |
| Tool | tmux |
| Context | Terminal multiplexer |
| Platform | Linux, macOS, WSL, remote shells |
| Prefix | `++ctrl+b++` by default |
| Default/custom | Defaults first; custom examples at the bottom |
| Last reviewed | 2026-07-06 |

!!! note
    In this page, `Prefix` means `++ctrl+b++` unless your `.tmux.conf` changes it.

## Daily shortcuts

| Shortcut | Action | Frequency | Custom? | Notes |
| --- | --- | ---: | --- | --- |
| Prefix then ++c++ | Create new window | Daily | No | Use one window per task/project. |
| Prefix then ++n++ | Next window | Daily | No | Fast window cycling. |
| Prefix then ++p++ | Previous window | Daily | No | Fast window cycling. |
| Prefix then ++0++ ... ++9++ | Switch to numbered window | Daily | No | Best for stable window layouts. |
| Prefix then ++percent++ | Split pane horizontally | Daily | No | Creates left/right panes. |
| Prefix then ++double-quote++ | Split pane vertically | Daily | No | Creates top/bottom panes. |
| Prefix then ++o++ | Move to next pane | Daily | No | Simple pane rotation. |
| Prefix then ++z++ | Toggle pane zoom | Daily | No | Focus on one pane temporarily. |
| Prefix then ++d++ | Detach from session | Daily | No | Leaves session running. |
| Prefix then ++left++ / ++right++ / ++up++ / ++down++ | Move between panes | Daily | No | Depends on terminal key support. |

## Session management

| Shortcut / command | Action | Frequency | Custom? | Notes |
| --- | --- | ---: | --- | --- |
| `tmux` | Start tmux | Daily | No | Starts unnamed session. |
| `tmux new -s name` | Start named session | Weekly | No | Good for projects. |
| `tmux ls` | List sessions | Weekly | No | Shell command. |
| `tmux attach -t name` | Attach to session | Weekly | No | Resume work. |
| Prefix then ++s++ | Choose session interactively | Weekly | No | Useful with many sessions. |
| Prefix then ++d++ | Detach session | Daily | No | Return to normal shell. |
| Prefix then ++dollar++ | Rename current session | Monthly | No | Helps long-running sessions. |

## Window management

| Shortcut | Action | Frequency | Custom? | Notes |
| --- | --- | ---: | --- | --- |
| Prefix then ++c++ | Create window | Daily | No | New shell in session. |
| Prefix then ++comma++ | Rename window | Weekly | No | Useful for project layouts. |
| Prefix then ++w++ | Choose window from list | Weekly | No | Search visually. |
| Prefix then ++n++ | Next window | Daily | No | |
| Prefix then ++p++ | Previous window | Daily | No | |
| Prefix then ++ampersand++ | Kill window | Weekly | No | Prompts before closing. |

## Pane management

| Shortcut | Action | Frequency | Custom? | Notes |
| --- | --- | ---: | --- | --- |
| Prefix then ++percent++ | Split left/right | Daily | No | Horizontal split in tmux wording. |
| Prefix then ++double-quote++ | Split top/bottom | Daily | No | Vertical split in tmux wording. |
| Prefix then ++x++ | Kill pane | Weekly | No | Prompts before closing. |
| Prefix then ++space++ | Cycle pane layouts | Weekly | No | Great for quick rearrangement. |
| Prefix then ++q++ | Show pane numbers | Weekly | No | Press a number to jump. |
| Prefix then ++left++ / ++right++ / ++up++ / ++down++ | Select pane by direction | Daily | No | Terminal must pass arrow keys. |
| Prefix then ++ctrl+left++ / ++ctrl+right++ / ++ctrl+up++ / ++ctrl+down++ | Resize pane | Weekly | No | May vary by terminal. |

## Copy mode

| Shortcut | Action | Frequency | Custom? | Notes |
| --- | --- | ---: | --- | --- |
| Prefix then ++left-bracket++ | Enter copy mode | Weekly | No | Scrollback and copy. |
| ++q++ | Exit copy mode | Weekly | No | Also try `++esc++`. |
| ++space++ | Start selection | Weekly | Maybe | Works in vi copy mode. |
| ++enter++ | Copy selection | Weekly | Maybe | Works in vi copy mode. |
| Prefix then ++right-bracket++ | Paste buffer | Weekly | No | Pastes tmux buffer. |

## Commands and help

| Shortcut | Action | Frequency | Custom? | Notes |
| --- | --- | ---: | --- | --- |
| Prefix then ++question++ | List key bindings | Monthly | No | Best built-in reference. |
| Prefix then ++colon++ | tmux command prompt | Weekly | No | Run tmux commands interactively. |
| Prefix then ++t++ | Show clock | Rare | No | Mostly decorative. |
| Prefix then ++ctrl+b++ | Send prefix to application | Rare | No | Needed inside nested tmux/session apps. |

## Useful custom mappings

Add these to `~/.tmux.conf` only if they fit your workflow.

```tmux
# Reload tmux config quickly
bind r source-file ~/.tmux.conf \; display-message "tmux.conf reloaded"

# Vim-like pane navigation
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# Easier split shortcuts that preserve current path
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"
```

## Conflicts and notes

- The default prefix is `++ctrl+b++`, but many users remap it to `++ctrl+a++`.
- Terminal emulators can intercept shortcuts before tmux receives them.
- Copy mode behavior changes depending on whether you use vi or emacs key mode.
- Use `Prefix` then `++question++` inside tmux to confirm your actual active mappings.

## Sources

- [tmux manual page](https://www.man7.org/linux/man-pages/man1/tmux.1.html)
- [tmux cheat sheet](https://tmux.info/docs/cheatsheet)
