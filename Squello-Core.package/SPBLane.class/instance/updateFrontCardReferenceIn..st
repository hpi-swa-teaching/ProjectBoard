card movement
updateFrontCardReferenceIn: anOrderedCollection

	| indexFrontCard |
	anOrderedCollection withIndexDo:
		[:each :index | 	indexFrontCard := index - 1. 
			indexFrontCard = 0
				ifTrue: [each frontCardId: nil] 
				ifFalse: [each frontCardId: (anOrderedCollection at: indexFrontCard) id]].