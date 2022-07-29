card movement
reorderCards: anSPBCard with: anEvent
	
	self 
		removeFromOldLane: anSPBCard;
		addToNewLane: anSPBCard with: anEvent.