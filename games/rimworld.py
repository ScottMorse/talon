from typing import Dict
from talon import Module, actions, Context

mod = Module()

ctx = Context()

mod.mode("rimworld", "Mode for playing Rimworld")


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


@mod.capture(rule="zoom [way] ([in] | out)")
def zoom_input(m) -> Dict[str, bool]:
    """
    Matches on zoom in or zoom out.
    """
    return {"direction": "out" if "out" in m else "in",
            "way": "way" in m}


mod.list("distance_input", desc="distance to move")

DISTANCE_CONFIG = {
    "micro": {"time": "20ms"},
    "tiny": {"time": "150ms"},
    "short": {
        "time": "300ms",
    },
    "medium": {
        "time": "700ms",
    },
    "long": {
        "time": "1s",
    },
    "very long": {
        "time": "2s",
    },
}

ctx.lists["self.distance_input"] = {key: key for key in DISTANCE_CONFIG.keys()}

SPEED_CONFIG = {
    "slow": {"key": "1"},
    "normal": {"key": "2"},
    "medium": {"key": "2"},
    "faster": {"key": "3"},
}

mod.list("speed_input", desc="speed to set")

ctx.lists["self.speed_input"] = {key: key for key in SPEED_CONFIG.keys()}


@mod.capture(rule="[speed] {user.speed_input}")
def speed_input(m) -> str:
    """
    Matches on a speed setting.
    """
    return m.speed_input


@mod.action_class
class GameActions:
    def direction_keydown(direction: Dict[str, bool]):
        "Holds down the keys corresponding to the given direction"
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:down")

    def direction_keyup(direction: Dict[str, bool]):
        "Releases the keys corresponding to the given direction"
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:up")

    def direction_move_by_distance(direction: Dict[str, bool], distance: str):
        """
        Moves the cursor in the given direction by the given distance.
        """
        actions.user.direction_keydown(direction)
        actions.sleep(DISTANCE_CONFIG[distance]["time"])
        actions.user.direction_keyup(direction)

    def zoom(zoom: str):
        """
        Zooms in or out.
        """
        for _ in range(0, 10 if zoom["way"] else 1):
            actions.key("+" if zoom["direction"] == "in" else "-")

    def speed(speed: str):
        """
        Sets the game speed.
        """
        actions.key(SPEED_CONFIG[speed]["key"])
