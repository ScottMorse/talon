
app: code

-

go [line] <user.number_string>:
    key(escape)
    insert(number_string)
    key(G)

go top:
    key(escape)
    key(G)

go (bottom | end):
    key(escape)
    key(G)

(recent | recents):
    key(tab:6)

[dot] tsx: ".tsx"

[dot] ts: ".ts"

[dot] js: ".js"

[dot] py: ".py"

dot talon: ".talon"

[dot] json: ".json"

(new window | window new): key(super-shift-n)
pipe (separator | separate): " | "

next [search | result | search result]: key(enter)
previous [search | result | search result]: key(shift-enter)

(talent | talon) key [short]:
    "key()"
    key(left)

(talent | talon) key (long):

    ": key()"
    key(left)


^command [<phrase>]: 
    user.vscode("workbench.action.showCommands")
    sleep(0.1)
    insert(phrase)

^open [<phrase>]: 
    user.vscode("workbench.action.quickOpen")
    sleep(0.1)
    insert(phrase)

^search [<phrase>]: 
    user.vscode("actions.find")
    sleep(0.1)
    insert(phrase)

^(replace [all | every | multi file] | search (all | every | multi file)) [<phrase>]:
    user.vscode("workbench.action.replacementFiles")
    sleep(0.1)
    insert(phrase)
    
    