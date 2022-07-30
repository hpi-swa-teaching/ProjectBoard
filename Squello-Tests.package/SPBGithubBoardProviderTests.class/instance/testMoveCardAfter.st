tests
testMoveCardAfter

	| card card2 column |
	card := SPBCard new id: 187.
	card2 := SPBCard new id: 42.
	column := SPBColumn new id: 420420.
	
	provider moveCard: card after: card2 toColumn: column.
	self assert: 'moved 187 to 420420 and position after:42' equals: provider api messages first.