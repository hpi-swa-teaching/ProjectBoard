creation
setFrontCardFor: aSPBCard in: anOrderedCollection
	
	| indexFrontCard frontCardId |
	
	indexFrontCard := (anOrderedCollection indexOf: aSPBCard) -1.
	indexFrontCard = 0 ifFalse: 
		[frontCardId := (anOrderedCollection at: indexFrontCard) id.
		aSPBCard frontCardId: frontCardId].