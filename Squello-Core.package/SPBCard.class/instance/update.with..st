updating
update: aSymbol with: aDictionary

	| board newLane |
	aSymbol = #card ifFalse: [^ self].
	(self id = (aDictionary at: 'id') or: [self issueId = (aDictionary at: 'id')]) ifFalse: [^ self].
	
	((aDictionary at: 'action') = #move) ifTrue: 
		[board := self lane board.
		newLane := board lanes detect: [:lane | lane id = (aDictionary at: 'laneId')].
		self lane pasteup removeMorph: self.
		newLane removeFromOldLane: self.
		newLane pasteup addMorph: self.
		(aDictionary at: 'after')
			ifNil: [newLane cards addFirst: self]
			ifNotNil: [newLane cards add: self after: (newLane cards detect: [:card | card id = (aDictionary at: 'after')])].
		newLane resizeToFitCards.
		self lane alignCards.
		newLane alignCards.
		self lane: newLane].
	((aDictionary at: 'action') = #delete) ifTrue: 
		[].
	((aDictionary at: 'action') = #edit) ifTrue: 
		[].
	
	((aDictionary at: 'action') = #create) ifTrue: 
		[].