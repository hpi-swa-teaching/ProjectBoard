updating
resizeIndicatorFields

	self upperHalfMorph 
		position: self position;
		extent: self extent x @ (self extent y / 2).		
	self lowerHalfMorph 
		position: self position x @ (self position y + (self extent y / 2));
		extent: self extent x @ (self extent y / 2).