mode: user.rimworld

-

(go | hold) <user.direction_input>: 
    user.direction_keydown(user.direction_input)

<user.direction_input> {user.distance_input}:
    user.direction_move_by_distance(user.direction_input, user.distance_input)

{user.distance_input} <user.direction_input>:
    user.direction_move_by_distance(user.direction_input, user.distance_input)

stop:
    key(up:up)
    key(down:up)
    key(left:up)
    key(right:up)

<user.zoom_input>:
    user.zoom(user.zoom_input)

pause: key(space)

(cancel | menu): key(escape)

<user.speed_input>: 
    user.speed(user.speed_input)

[next] colonist: "."
(previous | prev) colonist: ","

room stats: "G"
beauty stats: "T"
inspector: key(alt)

(architect | arc): key(tab)
work: key(f1)
schedule: key(f2)
assign: key(f3)
animals: key(f4)
wildlife: key(f5)
research: key(f6)
quests: key(f7)
world: key(f8)
history: key(f9)

increment [ten]: key(ctrl)
increment [one] hundred: key(shift)
queue: key(shift)

mine: key(l)
copy: key(o)
move: key(b)
uninstall: key(p)
draft: key(r)
allow: key(f)
cancel: key(c)
deconstruct: key(x)
power: key(v)
harvest: key(h)
(go | attack): key(right-click)