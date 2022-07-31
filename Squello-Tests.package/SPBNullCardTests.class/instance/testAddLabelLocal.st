tests
testAddLabelLocal

	| assignee cardCopy |
	assignee := SPBLabel new.
	cardCopy := card veryDeepCopy.

	card addLabelLocal: assignee.
	
	self assert: cardCopy equals: card.