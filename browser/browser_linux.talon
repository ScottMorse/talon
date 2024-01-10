
app: chrome
app: brave
os: windows
os: linux

-

(dev [tools] [console] | console): key(ctrl-shift-j)
(dev [tools] [html | inspect | elements] | (html | inspect | elements)): key(ctrl-shift-c)
dev [tools] (prev | memory | mem | store | stored): key(ctrl-shift-i)

(url | address | search bar): key(ctrl-l)

search [<phrase>]: 
    key(ctrl-f)
    sleep(0.11)
    insert(phrase)

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
[new] incognito: key(n)

(open [link] | link [open]): key(enter)
(open [link] | link [open]) (new tab | tab new): key(ctrl-shift-enter)

take [search | result | search result] [new] tab: 
    key(escape)
    sleep(0.1)
    key(ctrl-shift-enter)
