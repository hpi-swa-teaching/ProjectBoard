tests-cards
testMoveCardAfter

	| card column response card2 |
	card := SPBCard new id: '42'.
	card2 := SPBCard new id: '69'.
	column := SPBColumn new id: '2'.
	response := provider moveCard: card after: card2 toColumn: column.
	self assert: response equals: 'moved 42 after 69'.