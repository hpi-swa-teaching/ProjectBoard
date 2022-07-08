updating
update: aSymbol with: aDictionary

	| board |
	aSymbol = #card ifFalse: [^ self].
	(self id = (aDictionary at: 'id') or: [self issueId = (aDictionary at: 'id')]) ifFalse: [^ self].
	
	((aDictionary at: 'action') = #move) ifTrue: 
		[board := self lane board.
		(aDictionary at: 'laneId') = self lane id ifTrue: []].
	((aDictionary at: 'action') = #delete) ifTrue: 
		[].
	((aDictionary at: 'action') = #edit) ifTrue: 
		[].
	
	((aDictionary at: 'action') = #create) ifTrue: 
		[].