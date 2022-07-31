tests
testRemoveLabelLocal

	| assignee cardCopy |
	assignee := SPBLabel new.
	cardCopy := card veryDeepCopy.

	card removeLabelLocal: assignee.
	
	self assert: cardCopy equals: card.