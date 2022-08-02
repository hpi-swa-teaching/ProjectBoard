accessing
setCardColumnAtTop: anSPBColumn

	self column: anSPBColumn.
	anSPBColumn addCardToTop: self.
	anSPBColumn pasteup addMorph: self.