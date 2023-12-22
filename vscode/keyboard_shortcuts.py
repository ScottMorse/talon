import json5
import os

with open(os.path.expanduser("~/.config/Code/User/keybindings.json"), "r") as f:
    key_bindings = json5.load(f)

print(key_bindings)

