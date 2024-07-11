tests-cards
testUpdateIssue

	| card response |
	card := SPBCard new id: '42'.
	response := provider updateCard: card.
	self assert: response equals: 'updated issue 42'.