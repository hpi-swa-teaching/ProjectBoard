setters
setCardLaneAtTop: anSPBLane

	self card lane: anSPBLane.
	anSPBLane addCardToTop: self card.
	anSPBLane setFrontCardFor: self card in: anSPBLane cards.
	anSPBLane pasteup addMorph: self card.
	