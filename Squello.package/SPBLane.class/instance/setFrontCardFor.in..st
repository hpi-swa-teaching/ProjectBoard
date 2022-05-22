creation
setFrontCardFor: aSPBLabel in: anOrderedCollection
	
	| indexFrontCard frontCardId |
	
	indexFrontCard := (anOrderedCollection indexOf: aSPBLabel) -1.
	indexFrontCard = 0 ifFalse: [
	frontCardId := (anOrderedCollection at: indexFrontCard) id.
	aSPBLabel frontCardId: frontCardId].