card movement
removeFromOldLane: anSPBCard
	
	anSPBCard lane cards remove: anSPBCard 
		ifAbsent: [].
	anSPBCard lane resizeToFitCards.
