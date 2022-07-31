tests
testRemoveAssignee

	| assignee cardCopy |
	assignee := SPBAssignee new.
	cardCopy := card veryDeepCopy.

	card removeAssignee: assignee.
	
	self assert: cardCopy equals: card.