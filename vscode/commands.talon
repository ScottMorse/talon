app: code

-

collapse [files | folders | explorer]: user.vscode("workbench.files.action.collapseExplorerFolders")
reveal [file] [in] [explorer]: user.vscode("workbench.files.action.showActiveFileInExplorer")

comment [line]: user.vscode("editor.action.commentLine")

find: user.vscode("workbench.action.findInFiles")

hide notification | notification hide: user.vscode("notifications.hideList")
show notification | notification show: user.vscode("notifications.showList")
accept notification | notification accept: user.vscode("notification.acceptPrimaryAction")
(clear | close) notification | notification (clear | close): user.vscode("notifications.clearAll")

save: user.vscode("workbench.action.files.save")
copy: user.vscode("editor.action.clipboardCopyAction")
cut: user.vscode("editor.action.clipboardCutAction")
paste: user.vscode("editor.action.clipboardPasteAction")

(new file | file new): user.vscode("explorer.newFile")
(folder new | new folder): user.vscode("explorer.newFolder")
file (left | prev | previous | back): user.vscode("workbench.action.previousEditor")
file (right | next | forward): user.vscode("workbench.action.nextEditor")
(file close | close [file]): user.vscode("workbench.action.closeActiveEditor")
(open | ope): user.vscode("workbench.action.quickOpen")

group [focus] left: user.vscode("workbench.action.focusLeftGroup") 
group [focus] up: user.vscode("workbench.action.focusAboveGroup") 
group [focus] down: user.vscode("workbench.action.focusBelowGroup") 
group [focus] right: user.vscode("workbench.action.focusRightGroup") 
(group new | new group) left: user.vscode("workbench.action.newGroupLeft") 
(group new | new group) (up | above): user.vscode("workbench.action.newGroupAbove") 
(group new | new group) (down | below): user.vscode("workbench.action.newGroupBelow") 
(group new | new group) right: user.vscode("workbench.action.newGroupRight") 
(group close | close group): user.vscode("workbench.action.closeGroup") 

[add] match (up | back | backward | prev | previous): user.vscode("editor.action.addSelectionToPreviousFindMatch") 
[add] match [down | next | forward]: user.vscode("editor.action.addSelectionToNextFindMatch") 

rename [file | dir | directory]: user.vscode("renameFile") 

command: user.vscode("workbench.action.showCommands")

replace (all | multifile): user.vscode("workbench.action.replaceInFiles")

[toggle] shell: user.vscode("workbench.action.terminal.focus") 
[focus] explorer: user.vscode("workbench.view.explorer")
[toggle] sidebar: user.vscode("workbench.action.toggleSidebarVisibility") 

close (files | all [files]): user.vscode("workbench.action.closeAllEditors") 

[go [to]] references: user.vscode("editor.action.goToReferences")

find | query | search: user.vscode("actions.find") 

all: user.vscode("editor.action.changeAll") 
[rename] symbol: user.vscode("editor.action.rename")

(toggle copilot | copilot toggle): user.vscode("github.copilot.toggleCopilot") 
copilot suggest: user.vscode("editor.action.inlineSuggest.trigger")
copilot generate: user.vscode("github.copilot.generate") 
accept [copilot] (generation | generation): user.vscode("github.copilot.acceptSuggestionsPanelSolution")
fill [suggestion]: user.vscode("editor.action.inlineSuggest.commit") 
fill word [suggestion]: user.vscode("editor.action.inlineSuggest.acceptNextWord")
next suggestion: user.vscode("editor.action.inlineSuggest.showNext") 
(prev | previous) suggestion: user.vscode("editor.action.inlineSuggest.showPrevious") 
hide (suggestion | suggest): user.vscode("editor.action.inlineSuggest.hide") 
suggest: user.vscode("editor.action.inlineSuggest.trigger") 

close (other [files] | others): user.vscode("workbench.action.closeOtherEditors") 

[focus] problems: user.vscode("workbench.action.problems.focus") 

([close] panel | panel close): 
    user.vscode("workbench.action.closePanel")
    user.vscode("workbench.action.closeAuxiliaryBar")

[move] panel [to | move] (side | sidebar | right): user.vscode("workbench.action.movePanelToSecondarySideBar") 
[move] panel [to | move] (down | bottom | under): user.vscode("workbench.action.moveSecondarySideBarToPanel")

increment [selection]: user.vscode("extension.incrementSelection")

[go [to]] (definition | define): user.vscode("editor.action.revealDefinition")
[go [to]] (definition | define) [to | on] [the] side: user.vscode("editor.action.revealDefinitionAside")
peek (definition | define): user.vscode("editor.action.peekDefinition")

([go [to]] type definition | define type): user.vscode("editor.action.revealTypeDefinition")
peek (type definition | define type): user.vscode("editor.action.peekTypeDefinition")

(next reference | reference [next]): user.vscode("references-view.next")
((previous | prev) reference | reference [(previous | prev)]): user.vscode("references-view.prev")

call hierarchy: user.vscode("references-view.showCallHierarchy")

hover: user.vscode("editor.action.showHover")
hover definition: user.vscode("editor.action.showDefinitionPreviewHover")

copilot chat | chat: user.vscode("workbench.panel.chat.view.copilot.focus")

restart ESLint [server]: user.vscode("eslint.restart")
restart TS [server]: user.vscode("typescript.restartTsServer")

hide: user.vscode("hideSuggestWidget")
widget: user.vscode("editor.action.triggerSuggest")

split [file | group | editor] [right]: user.vscode("workbench.action.splitEditor")
split [file | group | editor] left: user.vscode("workbench.action.splitEditorLeft")
split [file | group | editor] down: user.vscode("workbench.action.splitEditorDown")
split [file | group | editor] up: user.vscode("workbench.action.splitEditorUp")
split [file | group | editor] orthogonal: user.vscode("workbench.action.splitEditorOrthogonal")

[move] file [move] group left: user.vscode("workbench.action.moveEditorToLeftGroup")
[move] file [move] group right: user.vscode("workbench.action.moveEditorToRightGroup")
[move] file [move] group down: user.vscode("workbench.action.moveEditorToBelowGroup")
[move] file [move] group up: user.vscode("workbench.action.moveEditorToAboveGroup")
[move] file [move] group first: user.vscode("workbench.action.moveEditorToFirstGroup")
[move] file [move] group last: user.vscode("workbench.action.moveEditorToLastGroup")
[move] file [move] group next: user.vscode("workbench.action.moveEditorToNextGroup")
[move] file [move] group (prev | previous | back): user.vscode("workbench.action.moveEditorToPreviousGroup")

grow group all: user.vscode("workbench.action.increaseViewSize")
grow group: user.vscode("workbench.action.increaseViewWidth")
grow group (height | down | vertical): user.vscode("workbench.action.increaseViewHeight")

shrink group all: user.vscode("workbench.action.decreaseViewSize")
shrink group: user.vscode("workbench.action.decreaseViewWidth")
shrink group (height | down | vertical): user.vscode("workbench.action.decreaseViewHeight")

reset groups: user.vscode("workbench.action.evenEditorWidths")

(cursor [less | list] | cursorless) reset: user.vscode("cursorless.recomputeDecorationStyles")

(keybindings | [keyboard] shortcuts): user.vscode("workbench.action.openGlobalKeybindings")

[markdown] [open] preview: user.vscode("markdown.showPreviewToSide")

refactor: user.vscode("editor.action.refactor")
preview refactor | refactor preview: user.vscode("refactorPreview")
refactor (take | apply | accept) | refactor (take | apply | accept): user.vscode("refactorPreview.apply")
focus refactor | refactor focus: user.vscode("refactorPreview.focus")
refactor discard | discard refactor: user.vscode("refactorPreview.discard")
refactor group [by] file: user.vscode("refactorPreview.groupByFile")
refactor group [by] type: user.vscode("refactorPreview.groupByType")
refactor toggle group: user.vscode("refactorPreview.toggleGrouping")
refactor reset container: user.vscode("refactorPreview.resetViewContainerLocation")
refactor reset: user.vscode("refactorPreview.resetViewLocation")
