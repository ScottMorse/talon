app: brave
app: chrome

-

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

next [search | result | search result]: key(enter)
previous [search | result | search result]: key(shift-enter)
take [search | result | search result]: 
    key(escape)
    sleep(0.1)
    key(enter)