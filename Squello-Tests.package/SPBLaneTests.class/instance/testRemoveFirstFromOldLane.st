tests
testRemoveFirstFromOldLane

	| card1 card2 card3 |
	card1 := SPBCard new
		position: 0@0;
		column: lane;
		id: 1337.
	card2 := SPBCard new
		position: 0@50;
		column: lane;
		id: 187.
	card3 := SPBCard new
		position: 0@100;
		column: lane;
		id: 42.
	lane cards: (OrderedCollection newFrom: {card1 . card2 . card3}). 
	lane removeFromOldColumn: card1.
	
	self assert: card2 equals: (lane cards at: 1).
	self assert: card3 equals: (lane cards at: 2).
	self assert: 2 equals: (lane cards size).