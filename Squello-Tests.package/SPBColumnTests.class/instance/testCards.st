tests
testCards

	| cards |
	cards := { SPBCard new }.
	
	self assert: OrderedCollection new equals: column cards.
	column cards: cards.
	self assert: cards equals: column cards.