tests
testAddAssignee

	| assignee cardCopy |
	assignee := SPBAssignee new.
	cardCopy := card veryDeepCopy.

	card addAssignee: assignee.
	
	self assert: cardCopy equals: card.