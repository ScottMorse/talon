os: linux
app: code

-


search [<phrase>]: 
    key(ctrl-f)
    sleep(0.1)
    insert(phrase)

command [<phrase>]: 
    key(ctrl-shift-p)
    sleep(0.1)
    insert(phrase)

open [<phrase>]: 
    key(ctrl-shift-alt-`)
    key(ctrl-shift-alt-up)
    sleep(0.1)
    insert(phrase)

(replace [all | every | multi file] | search (all | every | multi file)) [<phrase>]:
    key(ctrl-shift-h)
    sleep(0.1)
    insert(phrase)