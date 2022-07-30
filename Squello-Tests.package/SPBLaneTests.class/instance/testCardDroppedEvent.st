tests
testCardDroppedEvent

	| card oldLane|
	oldLane := SPBLane new pasteup: SPBPluggablePasteUpMorph new.
	card := SPBCard new column: oldLane. 
	oldLane cards: (OrderedCollection newFrom: {card}).
	card position: 50@50.
	
	lane cardDropped: card Event: MouseEvent new.
	
	self assert: true equals: (lane cards contains: [:each | each = card]).