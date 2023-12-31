
app: chrome
app: brave
os: windows
os: linux

-

(dev [tools] [console] | console): key(ctrl-shift-j)
(dev [tools] [html | inspect | elements] | (html | inspect | elements)): key(ctrl-shift-c)
dev [tools] (prev | memory | mem | store | stored): key(ctrl-shift-i)

(url | address | search bar): key(ctrl-l)

search: key(ctrl-f)

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
[new] incognito: key(ctrl-shift-n)

(new window | window new): key(ctrl-n)

google [focus] (content | search | search (result | results)):
    key(tab:26)

google search:
    key(/)

duck google:
    " !g"
    key(enter)

duck google images:
    " !gi"
    key(enter)
