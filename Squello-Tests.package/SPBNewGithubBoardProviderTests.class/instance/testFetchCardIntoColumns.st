tests-cards
testFetchCardIntoColumns

	| column1 column2 |
	column1 := SPBColumn new id: '60'; changeProvider:  SPBGithubChangeProvider new.
	column2 := SPBColumn new id: '61'; changeProvider: SPBGithubChangeProvider new.
	provider fetchCardsIntoColumns: {column1. column2} asOrderedCollection.
	self assert: column1 cards size equals: 2.
	self assert: column2 cards size equals: 1.
	self assert: column1 cards first id equals: '1'.