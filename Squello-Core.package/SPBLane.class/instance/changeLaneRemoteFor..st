card movement
changeLaneRemoteFor: aSPBCard
	
	aSPBCard frontCardId 
		ifNil: [provider moveCardToTop: aSPBCard ToColumn: self]
		ifNotNil: [provider moveCard: aSPBCard after: aSPBCard frontCardId ToColumn: self].
	