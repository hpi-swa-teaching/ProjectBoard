card movement
moveIn: aSPBCard
	
	aSPBCard lane = self ifTrue: [self alignCards. ^ self].
	self changeLaneLocalFor: aSPBCard in: aSPBCard lane.
	self changeLaneRemoteFor: aSPBCard. 
	aSPBCard lane: self.
	self alignCards.
	