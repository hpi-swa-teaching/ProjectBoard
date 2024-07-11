tests-cards
testMoveCard

	| card column response |
	card := SPBCard new id: '42'.
	column := SPBColumn new id: '2'.
	response := provider moveCard: card toColumn: column.
	self assert: response equals: 'moved 42 to 2'.