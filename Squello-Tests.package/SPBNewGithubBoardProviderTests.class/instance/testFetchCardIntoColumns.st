tests-cards
testFetchCardIntoColumns

	| column1 column2 |
	column1 := SPBColumn new id: '60'.
	column2 := SPBColumn new id: '61'.
	provider fetchCardsIntoColumns: {column1. column2} asOrderedCollection.
	self assert: column1 cards size equals: 2.
	self assert: column2 cards size equals: 1.
	self assert: column1 cards first id equals: '1'.