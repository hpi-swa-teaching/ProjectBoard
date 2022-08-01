tests
testAddToNewColumnInMiddle

	| newCard card1 card2 |
	newCard := SPBCard new
		position: 0@50;
		id: 1337.
	card1 := SPBCard new
		position: 0@0;
		id: 187.
	card2 := SPBCard new
		position: 0@100;
		id: 42.
	column cards: (OrderedCollection newFrom: {card1 . card2}).	
	column addToNewColumn: newCard  with: DropEvent new.
	
	self assert: card1 equals: (column cards at: 1).
	self assert: newCard equals: (column cards at: 2).
	self assert: card2 equals: (column cards at: 3).