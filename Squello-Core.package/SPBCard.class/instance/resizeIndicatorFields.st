updating
resizeIndicatorFields
	
	| overlap |
	overlap := SPBLane defaultSpaceBetweenCards.
	self upperHalfMorph 
		position: self position x @ (self position y - overlap);
		extent: self extent x @ ((self extent y / 2) + overlap).		
	self lowerHalfMorph 
		position: self position x @ (self position y + (self extent y / 2));
		extent: self extent x @ (self extent y / 2).