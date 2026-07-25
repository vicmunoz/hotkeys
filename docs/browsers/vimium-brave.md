# Vimium for Brave

Vimium browser extension used in Brave, a Chromium-based browser.

These tables document the default Vimium key mappings together with the custom
mappings used in this setup. Rows marked *(custom)* are specific to this
configuration and are **not** Vimium defaults. Rows marked *(unmapped)* are
defaults configuration disabled.

## Navigating the page

| Shortcut | Action |
| --- | --- |
| ++j++ / ++ctrl+e++ | Scroll down |
| ++k++ / ++ctrl+y++ | Scroll up |
| ++d++ | Scroll a half page down *(unmapped)* |
| ++u++ | Scroll a half page up |
| ++h++ | Scroll left |
| ++l++ | Scroll right |
| ++g++ then ++g++ | Scroll to the top of the page |
| ++shift+g++ | Scroll to the bottom of the page |
| ++z++ then ++shift+h++ | Scroll all the way to the left |
| ++z++ then ++shift+l++ | Scroll all the way to the right |
| ++r++ | Reload the page |
| ++shift+r++ | Reload the page (hard) |

## Links

| Shortcut | Action |
| --- | --- |
| ++f++ | Open a link in the current tab |
| ++shift+f++ | Open a link in a new tab |
| ++alt+f++ | Open multiple links in a new tab |
| ++y++ then ++f++ | Copy a link URL to the clipboard |
| ++bracket-left++ then ++bracket-left++ | Follow the link labeled *previous* or `<` |
| ++bracket-right++ then ++bracket-right++ | Follow the link labeled *next* or `>` |

## URLs and clipboard

| Shortcut | Action |
| --- | --- |
| ++y++ then ++y++ | Copy the current URL to the clipboard |
| ++p++ | Open the clipboard's URL in the current tab |
| ++shift+p++ | Open the clipboard's URL in a new tab |
| ++g++ then ++u++ | Go up the URL hierarchy |
| ++g++ then ++shift+u++ | Go to the root of the current URL hierarchy |

## Frames and marks

| Shortcut | Action |
| --- | --- |
| ++g++ then ++f++ | Select the next frame on the page |
| ++g++ then ++shift+f++ | Select the page's main/top frame |
| ++m++ | Create a new mark |
| ++grave++ | Jump to a mark |

## Modes

| Shortcut | Action |
| --- | --- |
| ++i++ | Enter insert mode |
| ++v++ | Enter visual mode |
| ++shift+v++ | Enter visual line mode |
| ++g++ then ++i++ | Focus the first text input on the page |

## Tabs

| Shortcut | Action |
| --- | --- |
| ++t++ | Create new tab |
| ++shift+j++ / ++g++ then ++shift+t++ | Go one tab left (previous tab) |
| ++shift+k++ / ++g++ then ++t++ | Go one tab right (next tab) |
| `^` | Go to previously-visited tab |
| ++g++ then ++0++ | Go to the first tab |
| ++g++ then `$` | Go to the last tab |
| ++y++ then ++t++ | Duplicate current tab |
| ++alt+p++ | Pin or unpin current tab |
| ++alt+m++ | Mute or unmute current tab |
| ++shift+w++ | Move tab to a new window |
| ++less++ then ++less++ | Move tab to the left |
| ++greater++ then ++greater++ | Move tab to the right |
| ++x++ | Close current tab |
| ++shift+x++ | Restore closed tab (undo close) |
| ++ctrl+x++ | Close other tabs *(custom)* |
| ++d++ then ++$++ | Close tabs to the right *(custom)* |
| ++d++ then ++0++ | Close tabs to the left *(custom)* |

## Zoom

| Shortcut | Action |
| --- | --- |
| ++z++ then ++i++ | Zoom in |
| ++z++ then ++o++ | Zoom out |
| ++z++ then ++0++ | Reset zoom |

## History navigation

| Shortcut | Action |
| --- | --- |
| ++shift+h++ | Go back in history |
| ++shift+l++ | Go forward in history |

## Vomnibar

| Shortcut | Action |
| --- | --- |
| ++o++ | Open a URL, bookmark, or history entry |
| ++shift+o++ | Open a URL, bookmark, or history entry in a new tab |
| ++b++ | Open a bookmark in the current tab |
| ++shift+b++ | Open a bookmark in a new tab |
| ++shift+t++ | Search through your open tabs |
| ++g++ then ++e++ | Edit the current URL |
| ++g++ then ++shift+e++ | Edit the current URL and open in a new tab |

## Find

| Shortcut | Action |
| --- | --- |
| ++slash++ | Enter find mode |
| ++n++ | Cycle forward to the next find match |
| ++shift+n++ | Cycle backward to the previous find match |
| `*` | Find the selected text |
| `#` | Find the selected text, searching backwards |

## Miscellaneous

| Shortcut | Action |
| --- | --- |
| ++g++ then ++s++ | View page source |
| ++question++ | Show help |

## Vimium Backup and Restore options

To restore custom configuration defined above, save below as json file and restore it using extension options.

```json
{
  "keyMappings": "map <c-x> closeOtherTabs\nunmap d\nmap d$ closeTabsOnRight\nmap d0 closeTabsOnLeft",
  "settingsVersion": "2.4.2"
}
```
