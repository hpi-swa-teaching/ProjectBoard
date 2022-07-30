setters
setCardColumnAtTop: anSPBColumn

	self card column: anSPBColumn.
	anSPBColumn addCardToTop: self card.
	anSPBColumn pasteup addMorph: self card.
	