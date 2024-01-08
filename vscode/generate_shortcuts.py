import os
import re
import json5
import platform

with open(
    os.path.expanduser(
        "~/Library/Application Support/Code/User/keybindings.json"
        if platform.system() == "Darwin"
        else "~/.config/Code/User/keybindings.json"
    ),
    "r",
) as f:
    key_bindings = json5.load(f)


def format_key(key: str) -> str:
    return key.replace("+", "-").replace("meta", "super")


def create_rule(
    key: str, code_command: str, talon_rule: str, name: str, require_prefix: bool
) -> str:
    key_combos = format_key(key).split(" ")
    nl = "\n"
    return f"""
#{" " + code_command + f" ({name})" if name else " " + code_command}
^{"code" if require_prefix else "[code]"} {talon_rule}:
{nl.join(f"    key({key_combo})" for key_combo in key_combos)}
    """


cursor_commands = [
    "cursorWordPartLeftSelect",
    "cursorWordPartRight",
    "cursorWordPartRightSelect",
    "cursorWordPartStartLeft",
    "cursorWordPartStartLeftSelect",
    "cursorWordRight",
    "cursorWordRightSelect",
    "cursorWordStartLeft",
    "cursorWordStartLeftSelect",
    "cursorWordStartRight",
    "cursorWordStartRightSelect",
    "cursorWordAccessibilityLeftSelect",
    "cursorWordAccessibilityRight",
    "cursorWordAccessibilityRightSelect",
    "cursorWordEndLeft",
    "cursorWordEndLeftSelect",
    "cursorWordEndRight",
    "cursorWordEndRightSelect",
    "cursorWordLeft",
    "cursorWordLeftSelect",
    "cursorWordPartLeft",
    "cursorWordPartLeftSelect",
    "cursorWordPartRight",
    "cursorPageDownSelect",
    "cursorPageUp",
    "cursorPageUpSelect",
    "cursorRedo",
    "cursorRight",
    "cursorRightSelect",
    "cursorTop",
    "cursorTopSelect",
    "cursorUndo",
    "cursorUp",
    "cursorUpSelect",
    "cursorWordAccessibilityLeft",
    "cursorHome",
    "cursorHomeSelect",
    "cursorLeft",
    "cursorLeftSelect",
    "cursorLineEnd",
    "cursorLineEndSelect",
    "cursorLineStart",
    "cursorLineStartSelect",
    "cursorMove",
    "cursorPageDown",
    "cursorPageDownSelect",
    "cursorPageUp",
    "cursorBottom",
    "cursorBottomSelect",
    "cursorColumnSelectDown",
    "cursorColumnSelectPageDown",
    "cursorColumnSelectPageUp",
    "cursorColumnSelectRight",
    "cursorColumnSelectUp",
    "cursorDown",
    "cursorDownSelect",
    "cursorEnd",
    "cursorEndSelect",
]


talon_script = """# Generated by local script

app: code

-
"""
for binding in key_bindings:
    key = binding["key"]
    code_command = binding.get("command")
    custom_metadata = binding.get("customMetadata", {}) or {}
    talon_data = custom_metadata.get("talon") or {}
    talon_rule = talon_data.get("rule")
    talon_name = talon_data.get("name")
    talon_require_prefix = talon_data.get("requirePrefix", False)

    if key and talon_rule:
        talon_script += f"{create_rule(key, code_command, talon_rule, talon_name, talon_require_prefix)}"

# TODO for command in cursor_commands:
#     rule = re.sub(r"((?<=[a-z])[A-Z]|(?<!\A)[A-Z](?=[a-z]))", r" \1", command).lower()

#     talon_script += f"""
# # {command}
# ^[code] {rule}:
#     key(ctrl-shift-p)
#     sleep(1)
#     insert("{command}")
#     sleep(1)
#     key(enter)
# """


with open(
    os.path.join(
        os.path.dirname(os.path.abspath(__file__)), "generated_code_shortcuts.talon"
    ),
    "w",
) as f:
    f.write(talon_script)
