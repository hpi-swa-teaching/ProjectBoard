tests
testAddToNewColumnEmptyLane

	| newCard |
	newCard := SPBCard new
		position: 0@50;
		id: 1337.
	column cards: (OrderedCollection new).	
	column addToNewColumn: newCard with: DropEvent new.
	
	self assert: newCard equals: (column cards at: 1).
	self assert: 1 equals: (column cards size).