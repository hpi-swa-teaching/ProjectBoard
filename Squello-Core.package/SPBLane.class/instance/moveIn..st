card movement
moveIn: aSPBCard
	
	self reorderCards: aSPBCard.
	self changeLaneRemoteFor: aSPBCard. 
	aSPBCard lane = self ifTrue: [self alignCards. ^ self].
	aSPBCard lane alignCards.
	self alignCards.
	aSPBCard lane: self.
	