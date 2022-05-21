accessing
moveIn: aSPBCard

	self changeLaneLocalFor: aSPBCard in: aSPBCard lane.
	self changeLaneRemoteFor: aSPBCard id. 
	aSPBCard lane: self.
	self alignCards.
	