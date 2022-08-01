tests
testCardDroppedEvent

	| card oldColumn|
	oldColumn := SPBColumn new pasteup: SPBPluggablePasteUpMorph new.
	card := SPBCard new column: oldColumn. 
	oldColumn cards: (OrderedCollection newFrom: {card}).
	card position: 50@50.