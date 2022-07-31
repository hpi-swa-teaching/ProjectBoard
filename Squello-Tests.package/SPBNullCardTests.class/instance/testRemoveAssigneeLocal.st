tests
testRemoveAssigneeLocal

	| assignee cardCopy |
	assignee := SPBAssignee new.
	cardCopy := card veryDeepCopy.

	card removeAssigneeLocal: assignee.
	
	self assert: cardCopy equals: card.