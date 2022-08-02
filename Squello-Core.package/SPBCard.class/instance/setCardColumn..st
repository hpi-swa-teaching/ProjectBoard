accessing
setCardColumn: anSPBColumn

	self column: anSPBColumn.
	anSPBColumn addCard: self.
	anSPBColumn pasteup addMorph: self.