card movement
moveIn: aSPBCard
	
	self reorderCards: aSPBCard.
	self changeLaneRemoteFor: aSPBCard. 
	aSPBCard lane = self ifTrue: [self alignCards. ^ self].
	self changeLaneLocalFor: aSPBCard in: aSPBCard lane.
	self alignCards.
	aSPBCard lane: self.