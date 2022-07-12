card movement
reorderCards: aSPBCard with: anEvent
	
	self 
		removeFromOldLane: aSPBCard;
		addToNewLane: aSPBCard with: anEvent.