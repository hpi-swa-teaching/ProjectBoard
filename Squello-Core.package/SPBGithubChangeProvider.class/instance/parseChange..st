general changes
parseChange: aJsonObject

	| action change type |
	
	action := aJsonObject at: 'action'.
	
	(aJsonObject includesKey: 'project_card') 
		ifTrue: [type := #card.
			action = 'moved' 
				ifTrue: [change := self cardMoved: aJsonObject].
			action = 'created'
				ifTrue: [type := #column. change := self cardCreated: aJsonObject].
			action = 'deleted'
				ifTrue: [change := self cardDeleted: aJsonObject]].

	(aJsonObject includesKey: 'project_column') 
		ifTrue: [type := #column.
			action = 'moved'
				ifTrue: [change := self columnMoved: aJsonObject].
			action = 'created'
				ifTrue: [type := #board. change := self columnCreated: aJsonObject].
			action = 'deleted'
				ifTrue: [change := self columnDeleted: aJsonObject].
			action = 'edited'
				ifTrue: [change := self columnEdited: aJsonObject]].
	
	(aJsonObject includesKey: 'issue')
		ifTrue: [type := #card.
			action = 'labeled'
				ifTrue: [change := self cardLabeled: aJsonObject].
			action = 'unlabeled'
				ifTrue: [change := self cardUnlabeled: aJsonObject].
			action = 'assigned'
				ifTrue: [change := self cardAssigned: aJsonObject].
			action = 'unassigned'
				ifTrue: [change := self cardUnassigned: aJsonObject].
			action = 'edited'
				ifTrue: [change := self cardEdited: aJsonObject]].
	
	action = 'opened'
		ifTrue: [^ self.].
	change 
		ifNil: [^ self.].
	
	self changed: type with: change.