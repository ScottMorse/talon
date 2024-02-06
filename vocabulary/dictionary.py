from PyDictionary import PyDictionary
from talon import Context, Module, actions, imgui, registry, settings

dictionary = PyDictionary()

mod = Module()

ctx = Context()

STATE = {"word": "", "definition": {}, "loading": False}


def include_close_button(gui: imgui.GUI):
    gui.text("")
    if gui.button("Close"):
        actions.user.define_close()


@imgui.open(y=0)
def dictionary_gui(gui: imgui.GUI):
    gui.text(f"Word: {STATE['word']}")

    gui.width = 500

    definition = STATE["definition"]

    if STATE["loading"]:
        gui.text("Loading...")
        include_close_button(gui)
        return

    if not definition:
        gui.text("No definition found.")
        include_close_button(gui)
        return

    parts_of_speech = definition.keys()

    print("definition", definition)
    print("parts of speech", parts_of_speech)

    for part_of_speech in parts_of_speech:
        print("Part of speech", part_of_speech)
        gui.text("")
        gui.text(part_of_speech + ":")
        for i, meaning in enumerate(definition[part_of_speech]):
            gui.text(f"    {i + 1}: {meaning}")

    include_close_button(gui)


# TODO: Use https://dictionaryapi.dev/


@mod.action_class
class Actions:
    def dictionary_define_word(word: str):
        """Open the dictionary window with the definition of word."""
        if word:
            STATE["word"] = word
            STATE["loading"] = True
            STATE["definition"] = dictionary.meaning(word)
            STATE["loading"] = False

        dictionary_gui.show()

    def dictionary_close():
        """Close the dictionary window."""
        dictionary_gui.hide()
