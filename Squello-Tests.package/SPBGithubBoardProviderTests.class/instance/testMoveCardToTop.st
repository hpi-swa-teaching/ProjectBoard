tests
testMoveCardToTop

	| card lane response |
	card := SPBCard new id: 187.
	lane := SPBLane new id: 420420.
	
	response := provider moveCardToTop: card toColumn: lane.
	self assert: 'moved 187 to 420420 and position top' equals: response.
	
	
	
	
	