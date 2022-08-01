tests
testIsLastCard

	| card1 card2 |
	card1 := SPBCard new id: 1337.
	card2 := SPBCard new id: 187.
	column cards: (OrderedCollection newFrom: {card1 . card2}).
	
	self assert: true equals: (column isLastCard: card2).
	self assert: false equals: (column isLastCard: card1).
	self assert: false equals: (column isLastCard: (SPBCard new id: 420)).