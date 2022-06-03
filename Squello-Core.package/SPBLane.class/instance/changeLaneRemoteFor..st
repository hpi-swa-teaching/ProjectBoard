card movement
changeLaneRemoteFor: aSPBCard
	
	aSPBCard frontCardId 
		ifNil: [provider moveCardToTop: aSPBCard toColumn: self]
		ifNotNil: [provider moveCard: aSPBCard after: aSPBCard frontCardId toColumn: self].
	