card movement
updateFrontCardReferenceIn: anOrderedCollection

	| currentSPBCard indexFrontCard |
	1 to: anOrderedCollection size do:
		[:aSPBCardIndex | currentSPBCard := (anOrderedCollection at: aSPBCardIndex). 
			indexFrontCard := aSPBCardIndex - 1. 
			indexFrontCard = 0
			ifTrue: [ currentSPBCard frontCardId: nil. ] 
			ifFalse: [currentSPBCard frontCardId: (anOrderedCollection at: indexFrontCard) id]].

	