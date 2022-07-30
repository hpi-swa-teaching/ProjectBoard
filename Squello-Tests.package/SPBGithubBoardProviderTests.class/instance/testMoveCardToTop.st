tests
testMoveCardToTop

	| card column |
	card := SPBCard new id: 187.
	column := SPBColumn new id: 420420.
	
	provider moveCardToTop: card toColumn: column.
	self assert: 'moved 187 to 420420 and position top' equals: provider api messages first.