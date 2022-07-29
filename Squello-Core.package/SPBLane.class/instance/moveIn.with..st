card movement
moveIn: anSPBCard with: anEvent
	
	| oldLane |
	self reorderCards: anSPBCard with: anEvent.
	self changeLaneRemoteFor: anSPBCard.
	self indicator hide.
	anSPBCard lane = self 
		ifTrue: [self alignCards. 
			^ self].
	oldLane := anSPBCard lane.
	oldLane 
		alignCards;
		resizeBottomDetection.
	anSPBCard lane: self.
	self 
		alignCards;
		resizeBottomDetection.