card movement
changeLaneRemoteFor: aSPBCard
	
	aSPBCard frontCardId 
		ifNil: [provider moveCardToTop: aSPBCard id ToColumn: self id]
		ifNotNil: [provider moveCard: aSPBCard id after: aSPBCard frontCardId ToColumn: self id].
	