creation
addCardLocal: anSPBCard
	
	self pasteup addMorph: anSPBCard.
	self
		resizeToFitCards;
		alignCards.
	anSPBCard column: self.