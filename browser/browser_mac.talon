############
# MAC ONLY #
############

app: chrome
app: brave
os: mac

-

(dev [tools] [console] | console): key(super-alt-j)
(dev [tools] [html | inspect | elements] | (html | inspect | elements)): key(super-alt-c)
dev [tools] (prev | memory | mem | store | stored): key(super-alt-i)

^(URL | address | search bar) <user.lucky_input>:
    key(super-l)
    user.insert_lucky_input(user.lucky_input)

refresh: key(super-r)
(refresh hard | hard refresh): key(super-shift-r)

(tab (left | prev | previous | back) | (left | prev | previous | back) tab): key(alt-super-left)
(tab (next | right | forward) | (next | right | forward) tab): key(alt-super-right)

(tab (way | far) (left | prev | previous | back) | (way | far) (left | prev | previous | back) tab): key(super-1)
(tab (way | far) (next | right | forward) | (way | far) (next | right | forward) tab): key(super-9)

(move tab | tab move) (left | prev | previous | back): key(ctrl-shift-pageup)
(move tab | tab move) (right | next | forward): key(ctrl-shift-pagedown)

(restore [tab | tabs] | [tab | tabs] restore): key(super-shift-t)
(tab close | close tab): key(super-w)

((new | open) tab | tab (new | open)): key(super-t)
(new window | window new): key(super-n)
[new] incognito: key(super-shift-n)

search: key(super-f)

^search <user.lucky_input> new tab:
    key(super-f)
    user.insert_browser_search_lucky_input(user.lucky_input, "super-shift-enter")

^search <user.lucky_input>:
    key(super-f)
    user.insert_browser_search_lucky_input(user.lucky_input, "enter")

^take [search | result | search result] [new] tab: 
    key(escape)
    sleep(0.1)
    key(super-shift-enter)

(open [link] | link [open]): key(enter)
(open [link] | link [open]) (new tab | tab new): key(super-shift-enter)
