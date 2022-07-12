tests
testAddToNewLaneEmptyLane

	| newCard |
	newCard := SPBCard new
		position: 0@50;
		id: 1337.
	lane cards: (OrderedCollection new).	
	lane addToNewLane: newCard with: DropEvent new.
	
	self assert: newCard equals: (lane cards at: 1).
	self assert: 1 equals: (lane cards size).