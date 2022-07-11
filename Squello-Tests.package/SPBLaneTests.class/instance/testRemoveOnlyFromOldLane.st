tests
testRemoveOnlyFromOldLane

	| card1 |
	card1 := SPBCard new
		position: 0@0;
		lane: lane;
		id: 1337.
	lane cards: (OrderedCollection newFrom: {card1}). 
	lane removeFromOldLane: card1.
	
	self assert: 0 equals: (lane cards size).