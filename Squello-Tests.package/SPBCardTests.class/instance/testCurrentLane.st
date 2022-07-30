tests
testCurrentLane
	
	| lane |
	lane := SPBPluggablePasteUpMorph new.
	lane addMorph: card.
	
	self assert: lane equals: card currentColumn.