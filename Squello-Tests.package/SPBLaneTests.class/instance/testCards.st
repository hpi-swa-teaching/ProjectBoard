tests
testCards

	| cards |
	cards := { SPBCard new }.
	
	self assert: OrderedCollection new equals: lane cards.
	lane cards: cards.
	self assert: cards equals: lane cards.