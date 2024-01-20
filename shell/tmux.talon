app: alacritty
app: code

-
[t] mux kill <digits>:
    key(t)
    key(k)
    key(i)
    key(l)
    key(l)
    key(space)
    insert(digits)
    key(enter)

[t] mux (init | initialize | start | open):
    "tmux"
    key(enter)

[t] mux [pane | go] left:
    key(ctrl-b)
    key(left)

[t] mux [pane | go] right:
    key(ctrl-b)
    key(right)

[t] mux [pane | go] up:
    key(ctrl-b)
    key(up)

[t] mux [pane | go] down:
    key(ctrl-b)
    key(down)

[t] mux split (h | horizontal | across | left | right):
    key(ctrl-b)
    key(shift-')

[t] mux split (v | vertical | up | down):
    key(ctrl-b)
    key(shift-5)

[t] mux kill:
    key(ctrl-b)
    key(x)
    key(y)

[t] mux ([show] panes | show panes | [pane] numbers):
    key(ctrl-b)
    key(q)

[t] mux [pane | go] <digits>:
    key(ctrl-b)
    key(q)
    insert(digits)

[t] mux (kill window | window kill):
    key(ctrl-b)
    key(shift-7)
    key(y)

[t] mux (new window | window new):
    key(ctrl-b)
    key(c)

[t] mux window (left | prev | previous | back):
    key(ctrl-b)
    key(p)

[t] mux window (right | next | forward):
    key(ctrl-b)
    key(n)

[t] mux (size | resize | grow) left:
    key(ctrl-b)
    key(ctrl-left)

[t] mux (size | resize | grow) right:
    key(ctrl-b)
    key(ctrl-right)

[t] mux (size | resize | grow) up:
    key(ctrl-b)
    key(ctrl-up)

[t] mux (size | resize | grow) down:
    key(ctrl-b)
    key(ctrl-down)

[t] mux (d | detach):
    key(ctrl-b)
    key(d)