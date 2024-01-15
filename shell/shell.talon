app: alacritty
app: code

-

CD [<phrase>]: 
    insert("cd ")
    user.insert_formatted(phrase, 'relative')

(ls | list) [<phrase>]:
    "ls "
    user.insert_formatted(phrase, 'relative')

A G [<phrase>]: 
    "ag "
    insert(phrase)

A G files [<phrase>]: 
    "ag -g "
    user.insert_formatted(phrase, 'relative')

(control c | cancel): key(ctrl-c)

shell copy: key(ctrl-shift-c)
shell paste: key(ctrl-shift-v)

(RM | remove) [<phrase>]: 
    insert("rm ")
    user.insert_formatted(phrase, 'relative')

(RM | remove) force [<phrase>]: 
    insert("rm -rf ")
    user.insert_formatted(phrase, 'relative')

{user.git_command} add [<phrase>]:
    insert("git add ")
    user.insert_formatted(phrase, 'relative')

{user.git_command} commit [<phrase>]:
    insert("git commit -m \"{user.formatted_text(phrase, 'sentence')}\"")

{user.git_command} commit verify [<phrase>]:
    insert("git commit -m \"{user.formatted_text(phrase, 'sentence')}\" --no-verify")

{user.git_command} push: "git push"

{user.git_command} push verify: "git push --no-verify"

{user.git_command} status: 
    "git status"
    key(enter)

{user.git_command} log:
    "git log"
    key(enter)

{user.git_command} reset:
    "git reset "

{user.git_command} rebase:
    "git rebase "

{user.git_command} stash:
    "git stash"

{user.git_command} stash pop:
    "git stash pop "

{user.git_command} pull:
    "git pull "

{user.git_command} checkout:
    "git checkout "

{user.git_command} checkout branch:
    "git checkout -b "

{user.git_command} diff:
    "git diff "

{user.git_command} branch:
    "git branch "
