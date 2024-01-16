app: code

-

collapse [files | folders | explorer]: user.vscode("workbench.files.action.collapseExplorerFolders")

comment [line]: user.vscode("editor.action.commentLine")

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
^search (files | all | multifile): user.vscode("workbench.action.findInFiles")

[toggle] shell: user.vscode("workbench.action.terminal.focus") 
[focus] explorer: user.vscode("workbench.view.explorer")
[toggle] sidebar: user.vscode("workbench.action.toggleSidebarVisibility") 

close (files | all [files]): user.vscode("workbench.action.closeAllEditors") 

[go [to]] references: user.vscode("editor.action.goToReferences")

find | query | search: user.vscode("actions.find") 

all: user.vscode("editor.action.changeAll") 
[rename] symbol: user.vscode("editor.action.rename")

[toggle] copilot [toggle]: user.vscode("github.copilot.toggleCopilot") 
copilot generate: user.vscode("github.copilot.generate") 
commit suggestion: user.vscode("editor.action.inlineSuggest.commit") 
next suggestion: user.vscode("editor.action.inlineSuggest.showNext") 
(prev | previous) suggestion: user.vscode("editor.action.inlineSuggest.showPrevious") 
hide suggestion: user.vscode("editor.action.inlineSuggest.hide") 
trigger suggestion: user.vscode("editor.action.inlineSuggest.trigger") 

close (other [files] | others): user.vscode("workbench.action.closeOtherEditors") 

[focus] problems: user.vscode("workbench.action.problems.focus") 

([close] panel | panel close): 
    user.vscode("workbench.action.closePanel")
    user.vscode("workbench.action.closeAuxiliaryBar")

[move] panel [to | move] (side | sidebar | right): user.vscode("workbench.action.movePanelToSecondarySideBar") 
[move] panel [to | move] (down | bottom | under): user.vscode("workbench.action.moveSecondarySideBarToPanel")

increment [selection]: user.vscode("extension.incrementSelection")

[go [to]] definition: user.vscode("editor.action.revealDefinition")
peek definition: user.vscode("editor.action.peekDefinition")
[go [to]] type definition: user.vscode("editor.action.revealTypeDefinition")
peek type definition: user.vscode("editor.action.peekTypeDefinition")

(next reference | reference [next]): user.vscode("references-view.next")
((previous | prev) reference | reference [(previous | prev)]): user.vscode("references-view.prev")

call hierarchy: user.vscode("references-view.showCallHierarchy")