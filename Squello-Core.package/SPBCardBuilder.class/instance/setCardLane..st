setters
setCardLane: aSPBLane

	self card lane: aSPBLane.
	aSPBLane addCard: self card.
	aSPBLane pasteup addMorph: self card.
	