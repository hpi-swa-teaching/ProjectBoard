tests-cards
testMoveCardToTop

	| card column response |
	card := SPBCard new id: '42'.
	column := SPBColumn new id: '2'.
	response := provider moveCardToTop: card toColumn: column.
	self assert: response equals: 'moved 42 after nil'.