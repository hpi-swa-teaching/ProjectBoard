setters
setCardLaneAtTop: aSPBLane

	self card lane: aSPBLane.
	aSPBLane addCardToTop: self card.
	aSPBLane setFrontCardFor: self card in: aSPBLane cards.
	aSPBLane pasteup addMorph: self card.
	