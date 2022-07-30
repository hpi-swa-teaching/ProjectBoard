card movement
reorderCards: anSPBCard with: anEvent
	
	self 
		removeFromOldColumn: anSPBCard;
		addToNewColumn: anSPBCard with: anEvent.