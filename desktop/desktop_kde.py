from typing import Dict
from talon import Module, actions, Context, grammar
from time import sleep
from .desktop import DESKTOP_ALIASES
from ..util.internal import create_list_definer

mod = Module()

ctx = Context()

ctx.matches = r"""
os: linux
"""

define_list = create_list_definer(mod, ctx)


class ScreenShortcuts:
    def __init__(self, focus="", send=""):
        self.focus = focus
        self.send = send


class Screen:
    def __init__(self, aliases=[], kde_number=0, shortcuts=ScreenShortcuts()):
        self.aliases = aliases
        self.kde_number = kde_number
        self.shortcuts = shortcuts


SCREENS = [
    Screen(
        aliases=["middle", "two", "big", "main"],
        kde_number=0,
        shortcuts=ScreenShortcuts(
            focus="alt-super-shift-1",
            send="super-shift-up",
        ),
    ),
    Screen(
        aliases=["left", "one", "vertical"],
        kde_number=1,
        shortcuts=ScreenShortcuts(
            focus="alt-super-shift-2",
            send="super-shift-left",
        ),
    ),
    Screen(
        aliases=["right", "three", "small", "tiny"],
        kde_number=2,
        shortcuts=ScreenShortcuts(
            focus="alt-super-shift-3",
            send="super-shift-right",
        ),
    ),
    Screen(
        aliases=["TV", "four", "huge"],
        kde_number=3,
        shortcuts=ScreenShortcuts(
            focus="alt-super-shift-4",
            send="super-shift-down",
        ),
    ),
]

MONITOR_ALIASES = [alias for screen in SCREENS for alias in screen.aliases]

define_list(
    "monitor_alias",
    MONITOR_ALIASES,
)


def find_monitor_by_alias(alias: str):
    for screen in SCREENS:
        if alias in screen.aliases:
            return screen
    message = f"Monitor with alias {alias} not found"
    actions.app.notify(message)
    raise ValueError(message)


@mod.capture(rule="{user.screen_alias} {user.monitor_alias}")
def screen_specifier_full(m) -> Screen:
    """
    A single monitor by its alias or number. (Requires screen alias prefix)
    """
    return find_monitor_by_alias(m[1])


@mod.capture(rule="[{user.screen_alias}] {user.monitor_alias}")
def screen_specifier(m) -> Screen:
    """
    A single monitor by its alias or number. (Optional screen alias prefix)
    """
    monitor_alias = m[0]
    if monitor_alias not in MONITOR_ALIASES:
        monitor_alias = m[1]
    return find_monitor_by_alias(monitor_alias)


class WorkspaceShortcuts:
    def __init__(self, focus="", send=""):
        self.focus = focus
        self.send = send


class Workspace:
    is_initialized = False

    def __init__(
        self, name="", number="", shortcuts=WorkspaceShortcuts(), aliases=[], apps=[]
    ):
        self.name = name
        self.number = number
        self.shortcuts = shortcuts
        self.aliases = aliases
        self.apps = apps

    def __str__(self):
        return f"<Workspace '{self.name}' ({self.number})>"


WORKSPACES = [
    Workspace(
        name="Workspace 1",
        number="one",
        shortcuts=WorkspaceShortcuts(focus="ctrl-f1", send="ctrl-f9"),
        aliases=[],
    ),
    Workspace(
        name="Workspace 2",
        number="two",
        shortcuts=WorkspaceShortcuts(focus="ctrl-f2", send="ctrl-f10"),
        aliases=[],
    ),
    Workspace(
        name="Workspace 3",
        number="three",
        shortcuts=WorkspaceShortcuts(focus="ctrl-f3", send="ctrl-f11"),
        aliases=[],
    ),
    Workspace(
        name="Browser",
        number="four",
        shortcuts=WorkspaceShortcuts(focus="ctrl-f4", send="ctrl-f12"),
        aliases=["brave", "browser"],
        apps=["brave", "brave", "brave"],
    ),
    Workspace(
        name="VSCode",
        number="five",
        shortcuts=WorkspaceShortcuts(focus="ctrl-f5", send="ctrl-f13"),
        aliases=["code"],
        apps=["code", "code", "code"],
    ),
    Workspace(
        name="Terminal",
        number="six",
        shortcuts=WorkspaceShortcuts(focus="ctrl-f6", send="ctrl-f14"),
        aliases=["terminal", "alacritty"],
        apps=["alacritty", "alacritty", "alacritty"],
    ),
    Workspace(
        name="System",
        number="seven",
        shortcuts=WorkspaceShortcuts(focus="ctrl-f7", send="ctrl-f15"),
        aliases=["system", "system settings", "dolphin", "spotify"],
        apps=["systemsettings", "dolphin", "spotify"],
    ),
    Workspace(
        name="OBS",
        number="eight",
        shortcuts=WorkspaceShortcuts(focus="ctrl-f8", send="ctrl-f16"),
        aliases=["OBS", "recording"],
        apps=["obs", "dolphin", "vlc"],
    ),
]


def find_workspace_by_alias(alias: str):
    for workspace in WORKSPACES:
        if alias in workspace.aliases:
            return workspace
    raise ValueError(f"Workspace with alias {alias} not found")


def find_workspace_by_number(number: str):
    for workspace in WORKSPACES:
        if number == workspace.number:
            return workspace
    try:
        number = int(number)
        return WORKSPACES[number - 1]
    except:
        pass

    raise ValueError(f"Workspace with number {number} not found")


define_list(
    "desktop_number",
    [workspace.number for workspace in WORKSPACES],
)

WORKSPACE_ALIASES = [alias for workspace in WORKSPACES for alias in workspace.aliases]

define_list(
    "workspace_alias",
    WORKSPACE_ALIASES,
)


@mod.capture(
    rule="([{user.desktop_alias}] {user.workspace_alias} | {user.desktop_alias} {user.desktop_number})"
)
def workspace_specifier(m) -> Workspace:
    """
    A single workspace by its alias or number.
    """

    try:
        workspace_input = m[0]
        if workspace_input in DESKTOP_ALIASES:
            workspace_input = m[1]

        if workspace_input in WORKSPACE_ALIASES:
            return find_workspace_by_alias(workspace_input)
        else:
            return find_workspace_by_number(m[1])
    except Exception as e:
        actions.app.notify(str(e))
        raise e


def initialize_workspace(workspace: Workspace):
    if workspace.is_initialized or not len(workspace.apps):
        return

    delay = 1

    i = 0
    for app in workspace.apps:
        screen = SCREENS[i]

        if i > 0:
            actions.sleep(delay)

        actions.user.switcher_launch(app)
        actions.sleep(delay)
        actions.user.send_to_screen(screen)

        i += 1

    actions.sleep(1)
    actions.user.focus_screen(SCREENS[0])

    workspace.is_initialized = True


@mod.action_class
class DesktopActions:
    def toggle_maximize():
        """
        Maximizes the current window.
        """
        actions.key("super-pageup")

    def focus_screen(screen: Screen):
        """
        Focuses the given screen.
        """
        print("Focusing screen", screen)
        actions.key(screen.shortcuts.focus)

    def send_to_screen(screen: Screen):
        """
        Sends the current window to the given screen.
        """
        print("Sending to screen", screen)
        actions.key(screen.shortcuts.send)
        actions.sleep(0.05)
        actions.key(screen.shortcuts.focus)

    def focus_workspace(workspace: Workspace, screen: Screen = None):
        """
        Focuses the given workspace.
        """
        print("Focusing workspace", workspace)
        actions.key(workspace.shortcuts.focus)

        initialize_workspace(workspace)

        if screen is not None:
            actions.user.focus_screen(screen)

    def send_to_workspace(workspace: Workspace, screen: Screen = None):
        """
        Sends the current window to the given workspace.
        """
        print("Sending to workspace", workspace)
        actions.key(workspace.shortcuts.send)
        actions.sleep(0.05)
        actions.key(workspace.shortcuts.focus)

        if screen is not None:
            actions.user.send_to_screen(screen)

        initialize_workspace(workspace)
