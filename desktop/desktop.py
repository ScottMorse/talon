from typing import Dict
from talon import Module, actions, Context
from ..util.internal import create_list_definer

mod = Module()

ctx = Context()

define_list = create_list_definer(mod, ctx)

define_list("focus_alias", ["foke", "focus"])

define_list("window_alias", ["win", "window", "app"])

define_list("screen_alias", ["screen", "monitor", "display"])

DESKTOP_ALIASES = [
    "desk",
    "desktop",
    "virtual desk",
    "virtual desktop",
    "v desk",
    "v desktop",
]

define_list("desktop_alias", DESKTOP_ALIASES)
