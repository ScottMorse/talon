
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

dot tsx: ".tsx"

dot ts: ".ts"

dot js: ".js"

dot py: ".py"

dot talon: ".talon"

dot json: ".json"

true: "true"
false: "false"

pipe (separator | separate): " | "

next [search | result | search result]: key(enter)
previous [search | result | search result]: key(shift-enter)

^command <user.lucky_input>: 
    user.vscode("workbench.action.showCommands")
    user.insert_lucky_input(user.lucky_input)

^open <user.lucky_input>: 
    user.vscode("workbench.action.quickOpen")
    user.insert_lucky_input(user.lucky_input)

^search <phrase>: 
    user.vscode("actions.find")
    user.insert_delay(phrase)

^find <phrase>:
    user.vscode("workbench.action.findInFiles")
    user.insert_delay(phrase)

^(replace [all | every | multi file] | search (all | every | multi file)) <user.lucky_input>:
    user.vscode("workbench.action.replaceInFiles")
    user.insert_lucky_input(user.lucky_input)

^(copilot chat | chat) <user.lucky_input>:
    user.vscode("workbench.panel.chat.view.copilot.focus")
    sleep(0.1)
    edit.select_all()
    edit.delete()
    user.insert_lucky_input(user.lucky_input)

last file:
    user.vscode("workbench.action.quickOpen")
    sleep(0.1)
    key(down)
    key(enter)

last command: 
    user.vscode("workbench.action.showCommands")
    sleep(0.1)
    key(enter)

