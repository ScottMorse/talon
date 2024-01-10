
app: code

-

[code] (go [line | row] | [go] (line | row)) <user.number_string>:
    key(escape)
    insert(number_string)
    key(G)

[code] go top:
    key(escape)
    key(G)

[code] go (bottom | end):
    key(escape)
    key(G)

[code] (recent | recents):
    key(tab:6)

[dot] tsx: ".tsx"

[dot] ts: ".ts"

[dot] js: ".js"

[dot] json: ".json"

(new window | window new): key(super-shift-n)
pipe (separator | separate): " | "

next [search | result | search result]: key(enter)
previous [search | result | search result]: key(shift-enter)

