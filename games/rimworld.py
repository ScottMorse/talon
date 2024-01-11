from typing import Dict
from talon import Module, actions

mod = Module()


@mod.capture(
    rule="((north | south | up | down) [(east | west | left | right)] | east | west | left | right)"
)
def direction_input(m) -> Dict[str, bool]:
    """
    Matches on a basic compass direction to return which keys should
    be pressed.
    """

    return {
        "up": "north" in m or "up" in m,
        "down": "south" in m or "down" in m,
        "right": "east" in m or "right" in m,
        "left": "west" in m or "left" in m,
    }


@mod.action_class
class GameActions:
    def direction_keydown(direction: Dict[str, bool]):
        "Holds down the keys corresponding to the given direction"

        # Press all the indicated keys down, exploiting the fact
        # that the key names in our dictionary match the arrow key
        # names on the keyboard
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:down")

    def direction_keyup(direction: Dict[str, bool]):
        "Releases the keys corresponding to the given direction"
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:up")

    def direction_move(direction: Dict[str, bool]):
        "Moves the character in the given direction"

        actions.user.direction_keydown(direction)
        actions.user.direction_keyup(direction)

    # def direction_attack(direction: Dict[str, bool]):
    #     "Makes the game character attack in the indicated direction"

    #     actions.user.direction_keydown(direction)
    #     # Assume space is a common 'perform attack' key
    #     actions.key("space")
    #     actions.user.direction_keyup(direction)
