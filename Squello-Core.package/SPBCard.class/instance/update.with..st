updating
update: aSymbol with: aDictionary

	| board newColumn label assignee |
	aSymbol = #card
		ifFalse: [^ self].
	(self id = (aDictionary at: 'id') or: [self issueId = (aDictionary at: 'id')])
		ifFalse: [^ self].
	
	((aDictionary at: 'action') = #move)
		ifTrue: [board := self column board.
			newColumn := board columns 
				detect: [:lane | lane id = (aDictionary at: 'laneId')].
			self openInWorld.
			newColumn removeFromOldColumn: self.
			newColumn pasteup addMorph: self.
			(aDictionary at: 'after')
				ifNil: [newColumn cards addFirst: self]
				ifNotNil: [newColumn cards add: self after: (newColumn cards detect: [:card | card id = (aDictionary at: 'after')])].
			newColumn resizeToFitCards.
			self column alignCards.
			newColumn alignCards.
			self column: newColumn].
		
	((aDictionary at: 'action') = #delete) 
		ifTrue: [self column deleteCard: self].
		
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
	
	self column activeCard = self 
		ifTrue: [self column changeActiveCardTo: self].