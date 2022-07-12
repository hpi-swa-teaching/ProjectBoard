card movement
removeFromOldLane: aSPBCard
	
	aSPBCard lane cards remove: aSPBCard ifAbsent: [].
	aSPBCard lane resizeToFitCards.
