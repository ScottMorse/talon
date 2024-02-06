app: alacritty
app: code

-

^CD [<phrase>]: 
    user.clear_shell_input()
    insert("cd ")
    user.insert_formatted(phrase, 'relative')

^(ls | list) [<phrase>]:
    user.clear_shell_input()
    "ls "
    user.insert_formatted(phrase, 'relative')

^A G [<phrase>]: 
    user.clear_shell_input()
    "ag "
    insert(phrase)

^A G files [<phrase>]: 
    user.clear_shell_input()
    "ag -g "
    user.insert_formatted(phrase, 'relative')

(control c | cancel): key(ctrl-c)

shell copy: key(ctrl-shift-c)
shell paste: key(ctrl-shift-v)

clear input:
    user.clear_shell_input()

clear shell: 
    user.clear_shell_input()
    "clear"
    key(enter)

(RM | remove) [<phrase>]: 
    user.clear_shell_input()
    insert("rm ")
    user.insert_formatted(phrase, 'relative')

(RM | remove) force [<phrase>]: 
    user.clear_shell_input()
    insert("rm -rf ")
    user.insert_formatted(phrase, 'relative')
