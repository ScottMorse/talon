os: linux

-

# Focus window
{user.focus_alias} [{user.window_alias}] (left): key(alt-super-left)
{user.focus_alias} [{user.window_alias}] (right): key(alt-super-right)
{user.focus_alias} [{user.window_alias}] (prev | previous | back | up): key(super-k)
{user.focus_alias} [{user.window_alias}] (next | down): key(super-shift-l)

# Resize window
[{user.window_alias}] grow left: key(super-shift-7)
[{user.window_alias}] grow down: key(super-shift-8)
[{user.window_alias}] g&row up: key(super-shift-9)
[{user.window_alias}] grow right: key(super-shift--)
({user.window_alias} close | close {user.window_alias}): key(alt-f4)

# Control kronkite tiles
tile (new | increment): key(alt-super-shift-y)
tile (delete | close | decrement): key(alt-super-shift-y)
[tile] float: key(super-f9)
tile main: key(alt-super-shift-/)

[toggle] (max | maximize): user.toggle_maximize()

[{user.focus_alias}] <user.screen_specifier_full>: user.focus_screen(user.screen_specifier_full)
{user.window_alias} <user.screen_specifier_full>: user.send_to_screen(user.screen_specifier_full)

<user.workspace_specifier>: user.focus_workspace(user.workspace_specifier)
<user.workspace_specifier> <user.screen_specifier>: user.focus_workspace(user.workspace_specifier, user.screen_specifier)

{user.window_alias} <user.workspace_specifier>: user.send_to_workspace(user.workspace_specifier)
{user.window_alias} <user.workspace_specifier> <user.screen_specifier>: user.send_to_workspace(user.workspace_specifier, user.screen_specifier)

emoji: key(super-.)

screenshot: key(alt-super-[)

recon: key(alt-super-shift-r)

veb: key(alt-super-shift-v)

(undo | nevermind): key(ctrl-z)
redo: key(ctrl-shift-z)

copy: key(ctrl-c)
paste: key(ctrl-v)

zoom [in]: key(ctrl-+)
zoom out: key(ctrl--)
