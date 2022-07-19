card movement
moveIn: aSPBCard with: anEvent
	
	| oldLane |
	self reorderCards: aSPBCard with: anEvent.
	self changeLaneRemoteFor: aSPBCard.
	self indicator hide.
	aSPBCard lane = self 
		ifTrue: [self alignCards. 
			^ self].
	oldLane := aSPBCard lane.
	oldLane 
		alignCards;
		resizeBottomDetection.
	aSPBCard lane: self.
	self 
		alignCards;
		resizeBottomDetection.