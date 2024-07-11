tests-cards
testCreateCardsFromColumn

	| column |
	column := SPBColumn new title: 'the column title'; id: '42'.
	self should: [provider createCardsFromColumn: column] raise: NotImplemented.