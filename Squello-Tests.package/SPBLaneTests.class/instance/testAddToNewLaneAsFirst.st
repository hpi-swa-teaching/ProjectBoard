tests
testAddToNewLaneAsFirst

	| newCard card1 card2 |
	newCard := SPBCard new
		position: 0@0;
		id: 1337.
	card1 := SPBCard new
		position: 0@50;
		id: 187.
	card2 := SPBCard new
		position: 0@100;
		id: 42.
	lane cards: (OrderedCollection newFrom: {card1 . card2}).	
	lane addToNewColumn: newCard with: DropEvent new.
	
	self assert: newCard equals: (lane cards at: 1).
	self assert: card1 equals: (lane cards at: 2).
	self assert: card2 equals: (lane cards at: 3).