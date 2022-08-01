tests
testRemoveMiddleFromOldColumn

	| card1 card2 card3 |
	card1 := SPBCard new
		position: 0@0;
		column: column;
		id: 1337.
	card2 := SPBCard new
		position: 0@50;
		column: column;
		id: 187.
	card3 := SPBCard new
		position: 0@100;
		column: column;
		id: 42.
	column cards: (OrderedCollection newFrom: {card1 . card2 . card3}). 
	column removeFromOldColumn: card2.
	
	self assert: card1 equals: (column cards at: 1).
	self assert: card3 equals: (column cards at: 2).
	self assert: 2 equals: (column cards size).