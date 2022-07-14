updating
update: aSymbol with: aDictionary

	| board newLane label assignee |
	aSymbol = #card
		ifFalse: [^ self].
	(self id = (aDictionary at: 'id') or: [self issueId = (aDictionary at: 'id')])
		ifFalse: [^ self].
	
	((aDictionary at: 'action') = #move)
		ifTrue: [board := self lane board.
			newLane := board lanes 
				detect: [:lane | lane id = (aDictionary at: 'laneId')].
			self openInWorld.
			newLane removeFromOldLane: self.
			newLane pasteup addMorph: self.
			(aDictionary at: 'after')
				ifNil: [newLane cards addFirst: self]
				ifNotNil: [newLane cards add: self after: (newLane cards detect: [:card | card id = (aDictionary at: 'after')])].
			newLane resizeToFitCards.
			self lane alignCards.
			newLane alignCards.
			self lane: newLane].
		
	((aDictionary at: 'action') = #delete) 
		ifTrue: [self lane deleteCard: self].
		
	((aDictionary at: 'action') = #edit) 
		ifTrue: [self updateTitle: (aDictionary at: 'title').
			self updateDescription: (aDictionary at: 'body')].
		
	((aDictionary at: 'action') = #label) 
		ifTrue: [label := SPBLabel newFrom: (aDictionary at: 'label').
			self labels add: label.
			self updateLabelIcons].
		
	((aDictionary at: 'action') = #unlabel)
		ifTrue: [label := SPBLabel newFrom: (aDictionary at: 'label').
			self labels remove: label.
			self updateLabelIcons].
		
	((aDictionary at: 'action') = #assign) 
		ifTrue: [assignee := SPBAssignee newFrom: (aDictionary at: 'assignee').
			self assignees add: assignee.
			self updateAssigneeCount].
		
	((aDictionary at: 'action') = #unassign) 
		ifTrue: [assignee := SPBAssignee newFrom: (aDictionary at: 'assignee').
			self assignees remove: assignee.
			self updateAssigneeCount].
	
	self lane board activeCard = self 
		ifTrue: [self lane board changeActiveCardTo: self].