card movement
moveIn: aSPBCard with: anEvent
	
	self reorderCards: aSPBCard with: anEvent.
	self changeLaneRemoteFor: aSPBCard.
	aSPBCard lane = self ifTrue: [self alignCards. ^ self].
	aSPBCard lane alignCards.
	aSPBCard lane: self.
	self alignCards.
	self indicator hide.