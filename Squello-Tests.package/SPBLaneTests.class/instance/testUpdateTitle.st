updating
testUpdateTitle
	
	| newTitle |
	newTitle := 'ESSENJA'.
	lane updateTitle: newTitle.
	self assert: newTitle equals: lane title.