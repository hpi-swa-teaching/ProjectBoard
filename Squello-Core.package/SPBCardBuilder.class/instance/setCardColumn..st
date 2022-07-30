setters
setCardColumn: anSPBColumn

	self card column: anSPBColumn.
	anSPBColumn addCard: self card.
	anSPBColumn pasteup addMorph: self card.
	