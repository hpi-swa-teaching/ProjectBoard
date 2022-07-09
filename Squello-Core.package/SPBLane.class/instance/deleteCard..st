card movement
deleteCard: anSPBCard

	self pasteup removeMorph: anSPBCard.
	self cards remove: anSPBCard.
	self resizeToFitCards.
	self alignCards.