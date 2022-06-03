tests
testAddToNewLaneInMiddle

	| newCard card1 card2 |
	newCard := SPBCard new
		position: 0@50;
		id: 1337;
		frontCardId: nil.
	card1 := SPBCard new
		position: 0@0;
		id: 187;
		frontCardId: nil.
	card2 := SPBCard new
		position: 0@100;
		id: 42;
		frontCardId: 187.	
	lane cards: (OrderedCollection newFrom: {card1 . card2}).	
	lane addToNewLane: newCard.
	
	self assert: card1 equals: (lane cards at: 1).
	self assert: newCard equals: (lane cards at: 2).
	self assert: card2 equals: (lane cards at: 3).
	self assert: nil equals: card1 frontCardId.
	self assert: 187 equals: newCard frontCardId.
	self assert: 1337 equals: card2 frontCardId.
	
	