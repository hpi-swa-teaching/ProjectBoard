tests
testRemoveOnlyFromOldLane

	| card1 |
	card1 := SPBCard new
		position: 0@0;
		column: column;
		id: 1337.
	column cards: (OrderedCollection newFrom: {card1}). 
	column removeFromOldColumn: card1.
	
	self assert: 0 equals: (column cards size).