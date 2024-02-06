
{user.git_command} add [<phrase>]:
    user.clear_shell_input()
    insert("git add ")
    user.insert_formatted(phrase, 'relative')

{user.git_command} commit [<phrase>]:
    user.clear_shell_input()
    insert("git commit -m \"")
    insert(user.formatted_text(phrase or "", 'sentence'))
    insert("\"")
    key(escape)
    key(i)

{user.git_command} commit verify [<phrase>]:
    user.clear_shell_input()
    insert("git commit -m \"{user.formatted_text(phrase, 'sentence')}\" --no-verify")

{user.git_command} push: 
    user.clear_shell_input()
    "git push "

{user.git_command} push verify: 
    user.clear_shell_input()
    "git push --no-verify "

{user.git_command} push force: 
    user.clear_shell_input()
    "git push -f "

{user.git_command} push (force verify | verify force): 
    user.clear_shell_input()
    "git push -f --no-verify "

{user.git_command} status: 
    user.clear_shell_input()
    "git status"
    key(enter)

{user.git_command} log:
    user.clear_shell_input()
    "git log"
    key(enter)

{user.git_command} reset:
    user.clear_shell_input()
    "git reset "

{user.git_command} reset soft:
    user.clear_shell_input()
    "git reset --soft "

{user.git_command} reset hard:
    user.clear_shell_input()
    "git reset --hard "

{user.git_command} rebase:
    user.clear_shell_input()
    "git rebase "

{user.git_command} rebase abort:
    user.clear_shell_input()
    "git rebase --abort"

{user.git_command} rebase continue:
    user.clear_shell_input()
    "git rebase --continue"

{user.git_command} rebase skip:
    user.clear_shell_input()
    "git rebase --skip"

{user.git_command} merge:
    user.clear_shell_input()
    "git merge "

{user.git_command} merge abort:
    user.clear_shell_input()
    "git merge --abort"

{user.git_command} stash:
    user.clear_shell_input()
    "git stash"

{user.git_command} stash pop:
    user.clear_shell_input()
    "git stash pop "

{user.git_command} stash (keep | index | keep index):
    user.clear_shell_input()
    "git stash --keep-index"

{user.git_command} pull:
    user.clear_shell_input()
    "git pull "

{user.git_command} pull rebase:
    user.clear_shell_input()
    "git pull --rebase "

{user.git_command} checkout [<phrase>]:
    user.clear_shell_input()
    "git checkout "
    user.insert_formatted(phrase, 'kebab,lower')

{user.git_command} checkout branch [<phrase>]:
    user.clear_shell_input()
    "git checkout -b "
    user.insert_formatted(phrase, 'kebab,lower')

{user.git_command} (checkout dash [dash] | un checkout | (remove | delete) changes):
    user.clear_shell_input()
    "git checkout -- " 

{user.git_command} diff:
    user.clear_shell_input()
    "git diff "

{user.git_command} diff staged:
    user.clear_shell_input()
    "git diff --staged"

{user.git_command} branch [<phrase>]:
    user.clear_shell_input()
    "git branch "
    user.insert_formatted(phrase, 'kebab,lower')
