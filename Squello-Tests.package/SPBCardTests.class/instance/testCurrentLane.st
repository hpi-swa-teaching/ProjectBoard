tests
testCurrentLane
	
	| column |
	column := SPBPluggablePasteUpMorph new.
	column addMorph: card.
	
	self assert: column equals: card currentColumn.