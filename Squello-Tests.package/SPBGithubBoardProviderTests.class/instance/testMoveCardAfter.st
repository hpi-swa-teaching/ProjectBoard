tests
testMoveCardAfter

	| card card2 lane |
	card := SPBCard new id: 187.
	card2 := SPBCard new id: 42.
	lane := SPBLane new id: 420420.
	
	provider moveCard: card after: card2 toColumn: lane.
	self assert: 'moved 187 to 420420 and position after:42' equals: provider api messages first.