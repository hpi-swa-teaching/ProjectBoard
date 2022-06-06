setters
setCardLane: aSPBLane

	self card lane: aSPBLane.
	aSPBLane addCard: self card.
	aSPBLane setFrontCardFor: self card in: aSPBLane cards.
	aSPBLane pasteup addMorph: self card.
	