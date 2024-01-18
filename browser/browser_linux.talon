
app: chrome
app: brave
os: windows
os: linux

-

(dev [tools] [console] | console): key(ctrl-shift-j)
(dev [tools] [html | inspect | elements] | (html | inspect | elements)): key(ctrl-shift-c)
dev [tools] (prev | memory | mem | store | stored): key(ctrl-shift-i)

search: key(super-f)

^(search | take) <user.lucky_input> new tab:
    key(ctrl-f)
    user.insert_browser_search_lucky_input(user.lucky_input, "ctrl-shift-enter")

^(search | take) <user.lucky_input>:
    key(ctrl-f)
    user.insert_browser_search_lucky_input(user.lucky_input, "enter")

^search [<phrase>]: 
    key(ctrl-f)
    sleep(0.11)
    insert(phrase)

(URL | address | search bar): key(ctrl-l)

^(URL | address | search bar) <user.lucky_input>:
    key(ctrl-l)
    user.insert_lucky_input(user.lucky_input)

refresh: key(ctrl-r)
(refresh hard | hard refresh): key(ctrl-shift-r)

(tab (left | prev | previous | back) | (left | prev | previous | back) tab): key(ctrl-shift-tab)
(tab (next | right | forward) | (next | right | forward) tab): key(ctrl-tab)

(tab (way | far) (left | prev | previous | back) | (way | far) (left | prev | previous | back) tab): key(ctrl-1)
(tab (way | far) (next | right | forward) | (way | far) (next | right | forward) tab): key(ctrl-9)

(move tab | tab move) (left | prev | previous | back): key(ctrl-shift-pageup)
(move tab | tab move) (right | next | forward): key(ctrl-shift-pagedown)

(restore [tab | tabs] | [tab | tabs] restore): key(ctrl-shift-t)
(tab close | close tab): key(ctrl-w)

(new tab | tab new): key(ctrl-t)
(new window | window new): key(ctrl-n)
[new] incognito: key(ctrl-shift-n)

(open [link] | link [open]): key(enter)
(open [link] | link [open]) (new tab | tab new): key(ctrl-shift-enter)

take [search | result | search result] [new] tab: 
    key(escape)
    sleep(0.1)
    key(ctrl-shift-enter)

(jump | go) tab <number>: key('ctrl-{number}')

(main | browser) menu: key(alt-f)

toggle bookmarks: key(ctrl-shift-b)

(manage bookmarks | bookmarks manage | bookmark manager): key(ctrl-shift-o)
bookmark [all] tabs: key(ctrl-shift-d)

[open] downloads: key(ctrl-j)

task manager: key(shift-escape)

[focus] toolbar: key(f10)

(clear | delete) history: key(ctrl-shift-delete)

profile: key(ctrl-shift-m)

print: key(ctrl-p)

open file: key(ctrl-o)

fullscreen page: key(f11)

view HTML: key(ctrl-u)