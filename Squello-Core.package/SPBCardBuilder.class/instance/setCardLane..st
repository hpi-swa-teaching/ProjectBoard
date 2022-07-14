setters
setCardLane: anSPBLane

	self card lane: anSPBLane.
	anSPBLane addCard: self card.
	anSPBLane pasteup addMorph: self card.
	