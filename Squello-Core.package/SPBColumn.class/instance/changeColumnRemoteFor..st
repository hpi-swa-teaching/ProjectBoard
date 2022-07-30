card movement
changeColumnRemoteFor: anSPBCard
		
	anSPBCard = self cards first
		ifTrue: [self boardProvider moveCardToTop: anSPBCard toColumn: self]
		ifFalse: [self boardProvider moveCard: anSPBCard after: (self cards at: (self cards indexOf: anSPBCard) - 1) toColumn: self].