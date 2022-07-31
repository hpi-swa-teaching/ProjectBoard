tests
testAddLabel

	| assignee cardCopy |
	assignee := SPBLabel new.
	cardCopy := card veryDeepCopy.

	card addLabel: assignee.
	
	self assert: cardCopy equals: card.