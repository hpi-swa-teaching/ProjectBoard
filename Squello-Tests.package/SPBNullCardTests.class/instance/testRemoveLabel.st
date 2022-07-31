tests
testRemoveLabel

	| assignee cardCopy |
	assignee := SPBLabel new.
	cardCopy := card veryDeepCopy.

	card removeLabel: assignee.
	
	self assert: cardCopy equals: card.