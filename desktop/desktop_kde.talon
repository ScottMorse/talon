os: linux

-

(focus | foke) (left): key(alt-super-left)
(focus | foke) (right): key(alt-super-right)
(focus | foke) (prev | previous | back | up): key(super-k)
(focus | foke) (next | down): key(super-shift-l)

[move] (window | app | move) [move] (screen | monitor | display) left: key(super-shift-left)
[move] (window | app | move) [move] (screen | monitor | display) middle: key(super-shift-up)
[move] (window | app | move) [move] (screen | monitor | display) right: key(super-shift-right)

[move] (window | app) [move] (prev | previous | left | up): key(super-shift-O)
[move] (window | app) [move] (next | right | down): key(super-shift-i)

[window | app] grow left: key(super-shift-7)
[window | app] grow down: key(super-shift-8)
[window | app] grow up: key(super-shift-9)
[window | app] grow right: key(super-shift--)
((window | app) close | close (window | app)): key(alt-f4)

[focus | foke] (screen | monitor | display) left: key(alt-super-shift-2)
[focus | foke] (screen | monitor | display) middle: key(alt-super-shift-1)
[focus | foke] (screen | monitor | display) right: key(alt-super-shift-3)

tile (new | increment): key(alt-super-shift-y)
tile (delete | close | decrement): key(alt-super-shift-y)
[tile] float: key(super-f9)
tile main: key(alt-super-shift-/)

(desk | desktop) one: key(ctrl-f1)
(desk | desktop) two: key(ctrl-f2)
(desk | desktop) three: key(ctrl-f3)
(desk | desktop) four: key(ctrl-f4)
(desk | desktop) five: key(ctrl-f5)
(desk | desktop) six: key(ctrl-f6)
(desk | desktop) seven: key(ctrl-f7)
(desk | desktop) (eight | ocho.): key(ctrl-f8)

[move] (window | app) [move] (desk | desktop) one: 
    key(ctrl-f9)
    sleep(0.1)
    key(ctrl-f1)
    key(alt-super-shift-1)
[move] (window | app) [move] (desk | desktop) two: 
    key(ctrl-f10)
    sleep(0.1)
    key(ctrl-f2)
    key(alt-super-shift-1)
[move] (window | app) [move] (desk | desktop) three: 
    key(ctrl-f11)
    sleep(0.1)
    key(ctrl-f3)
    key(alt-super-shift-1)
[move] (window | app) [move] (desk | desktop) four: 
    key(ctrl-f12)
    sleep(0.1)
    key(ctrl-f4)
    key(alt-super-shift-1)
[move] (window | app) [move] (desk | desktop) five: 
    key(ctrl-f13)
    sleep(0.1)
    key(ctrl-f5)
    key(alt-super-shift-1)
[move] (window | app) [move] (desk | desktop) six: 
    key(ctrl-f14)
    sleep(0.1)
    key(ctrl-f6)
    key(alt-super-shift-1)
[move] (window | app) [move] (desk | desktop) seven: 
    key(ctrl-f15) 
    sleep(0.1)
    key(ctrl-f7)
    key(alt-super-shift-1)
[move] (window | app) [move] (desk | desktop) (eight | ocho.): 
    key(ctrl-f16) 
    sleep(0.1)
    key(ctrl-f8)
    key(alt-super-shift-1)

terminal: key(super-5)

emoji: key(super-.)

screenshot: key(alt-super-[)

recon: key(alt-super-shift-r)

veb: key(alt-super-shift-v)

[open] settings: key(super-f21)

(browser | brave): key(super-alt-shift-b)

(undo | nevermind): key(ctrl-z)
redo: key(ctrl-shift-z)

copy: key(ctrl-c)
paste: key(ctrl-v)

zoom [in]: key(ctrl-+)
zoom out: key(ctrl--)
