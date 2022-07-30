updating
testUpdateTitle
	
	| newTitle |
	newTitle := 'ESSENJA'.
	column updateTitle: newTitle.
	self assert: newTitle equals: column title.