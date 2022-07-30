tests
testRemoveOnlyFromOldLane

	| card1 |
	card1 := SPBCard new
		position: 0@0;
		column: lane;
		id: 1337.
	lane cards: (OrderedCollection newFrom: {card1}). 
	lane removeFromOldColumn: card1.
	
	self assert: 0 equals: (lane cards size).