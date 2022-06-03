tests
testMoveCardAfter

	| card card2 lane response |
	card := SPBCard new id: 187.
	card2 := SPBCard new id: 42.
	lane := SPBLane new id: 420420.
	
	response := provider moveCard: card after: card2 id toColumn: lane.
	self assert: 'moved 187 to 420420 and position after:42' equals: response.
	
	
	
	
	