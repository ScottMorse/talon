from typing import Dict, Union
from talon import Module, actions, Context

mod = Module()

ctx = Context()


@mod.capture(rule="<phrase> [lucky]")
def lucky_input(m) -> Dict[str, Union[str, bool]]:
    return {
        "phrase": str(m["phrase"]),
        "lucky": "lucky" in m,
    }


DEFAULT_DELAY = 0.25


def _insert_delay(phrase: str, delay: float = DEFAULT_DELAY):
    """Insert a phrase with a delay"""
    actions.sleep(delay)
    actions.insert(phrase)


@mod.action_class
class UtilActions:
    def insert_delay(phrase: str, delay: float = DEFAULT_DELAY):
        """Insert a phrase with a delay"""
        _insert_delay(phrase, delay)

    def insert_lucky_input(
        inpt: Dict[str, Union[str, bool]],
        delay1: float = DEFAULT_DELAY,
        delay2: float = DEFAULT_DELAY,
    ):
        """Insert a phrase and press enter"""
        _insert_delay(inpt["phrase"], delay1)
        if inpt["lucky"]:
            actions.sleep(delay2)
            actions.key("enter")

    def insert_browser_search_lucky_input(
        inpt: Dict[str, Union[str, bool]], take_key: str
    ):
        """Insert a phrase and press enter"""
        _insert_delay(inpt["phrase"], 0.1)
        if inpt["lucky"]:
            actions.sleep(0.1)
            actions.key("escape")
            actions.sleep(0.1)
            actions.key(take_key)
