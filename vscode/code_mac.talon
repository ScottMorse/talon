os: mac
app: code

-

search [<phrase>]: 
    key(super-f)
    sleep(0.1)
    insert(phrase)

command [<phrase>]: 
    key(super-shift-p)
    sleep(0.1)
    insert(phrase)

open [<phrase>]:
    key(shift-p)
    sleep(0.1)
    insert(phrase)

(replace [all | every | multi file] | search (all | every | multi file)) [<phrase>]:
    key(super-shift-h)
    sleep(0.1)
    insert(phrase)