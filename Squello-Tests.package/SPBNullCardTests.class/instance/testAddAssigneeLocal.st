tests
testAddAssigneeLocal

	| assignee cardCopy |
	assignee := SPBAssignee new.
	cardCopy := card veryDeepCopy.

	card addAssigneeLocal: assignee.
	
	self assert: cardCopy equals: card.