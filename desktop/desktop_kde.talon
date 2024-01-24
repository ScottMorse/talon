os: linux

-

# TODO use lists at least in python for "app | window" etc.

# Focus window
{user.focus_alias} [{user.window_alias}] (left): key(alt-super-left)
{user.focus_alias} [{user.window_alias}] (right): key(alt-super-right)
{user.focus_alias} [{user.window_alias}] (prev | previous | back | up): key(super-k)
{user.focus_alias} [{user.window_alias}] (next | down): key(super-shift-l)

# Move windows between screens
{user.window_alias} {user.screen_alias} (left | one): key(super-shift-left)
{user.window_alias} {user.screen_alias} (middle | two): key(super-shift-up)
{user.window_alias} {user.screen_alias} (right | three): key(super-shift-right)
{user.window_alias} {user.screen_alias} (TV | four): key(super-shift-down)

# ?
{user.window_alias} (prev | previous | left | up): key(super-shift-O)
{user.window_alias} (next | right | down): key(super-shift-i)

# Resize window
[{user.window_alias}] grow left: key(super-shift-7)
[{user.window_alias}] grow down: key(super-shift-8)
[{user.window_alias}] grow up: key(super-shift-9)
[{user.window_alias}] grow right: key(super-shift--)
({user.window_alias} close | close {user.window_alias}): key(alt-f4)

# Focus screens
[{user.focus_alias}] {user.screen_alias} (left | one): key(alt-super-shift-2)
[{user.focus_alias}] {user.screen_alias} (middle | two): key(alt-super-shift-1)
[{user.focus_alias}] {user.screen_alias} (right | three): key(alt-super-shift-3)
[{user.focus_alias}] {user.screen_alias} (TV | four): key(alt-super-shift-4)

# Control kronkite tiles
tile (new | increment): key(alt-super-shift-y)
tile (delete | close | decrement): key(alt-super-shift-y)
[tile] float: key(super-f9)
tile main: key(alt-super-shift-/)

# Go to virtual desktop
{user.desktop_alias} one: key(ctrl-f1)
{user.desktop_alias} two: key(ctrl-f2)
{user.desktop_alias} three: key(ctrl-f3)
{user.desktop_alias} four: key(ctrl-f4)
{user.desktop_alias} five: key(ctrl-f5)
{user.desktop_alias} six: key(ctrl-f6)
{user.desktop_alias} seven: key(ctrl-f7)
{user.desktop_alias} (eight | ocho): key(ctrl-f8)

# Move window between desktops
{user.window_alias} {user.desktop_alias} one: 
    key(ctrl-f9)
    sleep(0.1)
    key(ctrl-f1)
{user.window_alias} {user.desktop_alias} two: 
    key(ctrl-f10)
    sleep(0.1)
    key(ctrl-f2)
{user.window_alias} {user.desktop_alias} three: 
    key(ctrl-f11)
    sleep(0.1)
    key(ctrl-f3)
{user.window_alias} {user.desktop_alias} four: 
    key(ctrl-f12)
    sleep(0.1)
    key(ctrl-f4)
{user.window_alias} {user.desktop_alias} five: 
    key(ctrl-f13)
    sleep(0.1)
    key(ctrl-f5)
{user.window_alias} {user.desktop_alias} six: 
    key(ctrl-f14)
    sleep(0.1)
    key(ctrl-f6)
{user.window_alias} {user.desktop_alias} seven: 
    key(ctrl-f15) 
    sleep(0.1)
    key(ctrl-f7)
{user.window_alias} {user.desktop_alias} (eight | ocho): 
    key(ctrl-f16) 
    sleep(0.1)
    key(ctrl-f8)

terminal: key(super-5)

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
