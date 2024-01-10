
os: mac

-

(desktop | win | window | desk | app) (left | back | prev | previous): key(ctrl-left)
(desktop | win | window | desk | app) (right | next | forward): key(ctrl-right)
(move (desktop | desk | win | window | app) | (desktop | desk | win | window | app) move): key(ctrl-up)
# (view all | (view | view all | all) (window | windows | desktop | desktops | apps | app)): key(ctrl-down)

spotlight: key(super-space)

([apps | app] (previous | prev | cycle)) | ((previous | prev | cycle) (apps | app)): key(super-tab)

([apps | app] (next | forward | cycle (next | forward))) | ((next | forward | cycle (next | forward)) (apps | app)): key(super-tab)

app window [next | forward | switch | cycle]: key(super-`)
app window (prev | previous | back | cycle [previous | prev | back]): key(super-shift-`)

force quit: key(option-super-escape)

hide [app [window | win | windows]]: key(super-h)

(full screen | fullscreen): key(super-ctrl-f)

(close window | window close): key(super-w)

[screen] lock: key(super-ctrl-q)

undo: key(super-z)
redo: key(super-shift-z)

menu bar: key(ctrl-f2)
dock: key(ctrl-f3)

zoom [in]: key(super-+)
zoom out: key(super--)
