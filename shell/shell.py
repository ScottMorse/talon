from typing import Dict
from talon import Module, actions, Context

mod = Module()

ctx = Context()

mod.list("git_command", desc="git command alias")

ctx.lists["self.git_command"] = {"git": "git", "get": "git"}
