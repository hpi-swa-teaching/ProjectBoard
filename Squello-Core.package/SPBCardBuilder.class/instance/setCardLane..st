setters
setCardLane: aSPBLane

	self card lane: aSPBLane.
	aSPBLane cards add: self card.
	aSPBLane setFrontCardFor: self card in: aSPBLane cards.
	aSPBLane pasteup addMorph: self card.
	