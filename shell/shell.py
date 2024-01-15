from typing import Dict
from talon import Module, actions, Context

mod = Module()

ctx = Context()

mod.list("git_command", desc="git command alias")

ctx.lists["self.git_command"] = {"git": "git", "get": "git"}


@mod.action_class
class ShellActions:
    def clear_shell_input():
        """Clear the current input"""
        actions.key("escape:2")
        actions.key("0")
        actions.key("d:2")
        actions.key("i")
