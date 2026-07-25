# Kitty

Terminal emulator for macOS-style keyboard workflow.

## Modifier

| Name | Meaning |
| --- | --- |
| `kitty_mod` | ++hyper++ |

## Windows and splits

| --- | --- |
| ++cmd+plus++ | Increase font size |
| ++cmd+minus++ | Decrease font size |

## Configuration and macOS app controls

| Shortcut | Action |
| --- | --- |
| ++ctrl+cmd+comma++ | Load config file |
| ++alt+cmd+comma++ | Debug config |
| ++cmd+h++ | Hide macOS app |
| ++cmd+q++ | Quit Kitty |

## Raw configuration

```conf
map cmd+c copy_to_clipboard
map cmd+h hide_macos_app
map cmd+minus             change_font_size all -2.0
map cmd+n       new_os_window
map cmd+plus         change_font_size all +2.0
map cmd+q quit
map cmd+shift+- launch --location=hsplit
map cmd+shift+\ launch --location=vsplit
map cmd+shift+h detach_window tab-left
map cmd+shift+l detach_window tab-right
map cmd+t       new_tab
map cmd+v paste_from_clipboard
map cmd+w       close_tab
map ctrl+cmd+,   load_config_file
map ctrl+cmd+t  set_tab_title
map ctrl+l clear_terminal to_cursor active
map f1 launch --allow-remote-control kitty +kitten broadcast --match-tab state:focused
map kitty_mod+- launch --cwd=current --location=hsplit
map kitty_mod+\ launch --cwd=current --location=vsplit
map kitty_mod+a goto_layout tall
map kitty_mod+d goto_layout stack
map kitty_mod+end scroll_end
map kitty_mod+f goto_layout horizontal
map kitty_mod+g goto_layout grid
map kitty_mod+h move_window_backward
map kitty_mod+home scroll_home
map kitty_mod+j previous_window
map kitty_mod+k next_window
map kitty_mod+l move_window_forward
map kitty_mod+page_down scroll_page_down
map kitty_mod+page_up scroll_page_up
map kitty_mod+s goto_layout splits:split_axis=horizontal
map kitty_mod+space next_layout
map kitty_mod+w close_window
map opt+cmd+,    debug_config
map shift+cmd+[    previous_tab
map shift+cmd+]     next_tab
```
