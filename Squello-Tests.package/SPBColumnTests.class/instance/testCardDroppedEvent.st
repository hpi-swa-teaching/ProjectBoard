tests
testCardDroppedEvent

	| card oldColumn|
	oldColumn := SPBColumn new pasteup: SPBPluggablePasteUpMorph new.
	card := SPBCard new column: oldColumn. 
	oldColumn cards: (OrderedCollection newFrom: {card}).
	card position: 50@50.
	
	column cardDropped: card Event: MouseEvent new.
	
	self assert: true equals: (column cards contains: [:each | each = card]).