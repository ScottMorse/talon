
rim <user.direction_input>: 
    user.direction_keydown(user.direction_input)

rim short <user.direction_input>:
    user.direction_keydown(user.direction_input)
    sleep(0.5)
    user.direction_keyup(user.direction_input)

rim stop:
    key(up:up)
    key(down:up)
    key(left:up)
    key(right:up)
