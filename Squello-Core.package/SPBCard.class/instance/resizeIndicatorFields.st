updating-local
resizeIndicatorFields
	
	self upperHalfMorph 
		extent: self cardIndicatorExtent.
	self lowerHalfMorph 
		position: self position + (0 @ self extent y / 2);
		extent: self cardIndicatorExtent.