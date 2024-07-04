testing
testCardToJson

	| json |
	json := self defaultCard asJson.
	self assert: 'this is the card title' equals: (json at: 'title').
	self assert: 42 equals: (json at: 'id').
	self assert: 'this is the description' equals: (json at: 'body').
	self assert: (json at: 'assignees') isCollection.
	self assert: (json at: 'closed').
	self assert: (json at: 'isNote') not. 
	self assert: (SPBAssignee newFrom: (json at: 'assignees') first) isAssignee..
	self assert: (json at: 'labels') isCollection.
	self assert: (SPBLabel newFrom: (json at: 'labels') first) isLabel.