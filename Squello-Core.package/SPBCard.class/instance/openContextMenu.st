context menu
openContextMenu

	| menu |
	menu := MenuMorph new defaultTarget: self.
	menu add: 'remove all Labels' action: #removeAllLabels.
	menu add: 'remove all Assignees' action: #removeAllAssignees.
	menu add: 'move to top' action: #moveToTop.
	menu add: 'toggle closed' action: #toggleClosed.
	menu popUpInWorld.