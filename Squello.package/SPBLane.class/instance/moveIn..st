card movement
moveIn: aSPBCard
	
	aSPBCard lane = self ifTrue: [self alignCards. ^ self].
	self changeLaneLocalFor: aSPBCard in: aSPBCard lane.
	self changeLaneRemoteFor: aSPBCard id. 
	aSPBCard lane: self.
	self alignCards.
	