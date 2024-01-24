from typing import Dict


def create_list_definer(mod, ctx):
    def define_list(name: str, lst: Dict, desc: str = None):
        mod.list(name, desc=desc)
        ctx.lists[f"self.{name}"] = lst

    return define_list
