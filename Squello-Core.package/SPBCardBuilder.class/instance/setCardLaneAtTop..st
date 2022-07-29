setters
setCardLaneAtTop: anSPBLane

	self card lane: anSPBLane.
	anSPBLane addCardToTop: self card.
	anSPBLane pasteup addMorph: self card.
	