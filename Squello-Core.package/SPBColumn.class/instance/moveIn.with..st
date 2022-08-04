card movement
moveIn: anSPBCard with: anEvent
	
	| oldColumn |
	self reorderCards: anSPBCard with: anEvent.
	self changeColumnRemoteFor: anSPBCard.
	self indicator hide.
	anSPBCard column = self 
		ifTrue: [self alignCards. ^ self].
	oldColumn := anSPBCard column.
	oldColumn 
		alignCards;
		resizeBottomDetection.
	anSPBCard column: self.
	self 
		alignCards;
		resizeBottomDetection.