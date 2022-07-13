tests
testMoveCardToTop

	| card lane |
	card := SPBCard new id: 187.
	lane := SPBLane new id: 420420.
	
	provider moveCardToTop: card toColumn: lane.
	self assert: 'moved 187 to 420420 and position top' equals: provider api messages first.