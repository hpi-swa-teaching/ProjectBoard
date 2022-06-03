tests
testRemoveLastFromOldLane

	| card1 card2 card3 |
	card1 := SPBCard new
		position: 0@0;
		lane: lane;
		id: 1337;
		frontCardId: nil.
	card2 := SPBCard new
		position: 0@50;
		lane: lane;
		id: 187;
		frontCardId: 1337.
	card3 := SPBCard new
		position: 0@100;
		lane: lane;
		id: 42;
		frontCardId: 187.	
	lane cards: (OrderedCollection newFrom: {card1 . card2 . card3}). 
	lane removeFromOldLane: card3.
	
	self assert: card1 equals: (lane cards at: 1).
	self assert: card2 equals: (lane cards at: 2).
	self assert: 2 equals: (lane cards size).
	self assert: nil equals: card1 frontCardId.
	self assert: 1337 equals: card2 frontCardId.
	
	