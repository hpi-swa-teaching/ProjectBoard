updating-local
resizeIndicatorFields
	
	self upperHalfIndicator 
		extent: self cardIndicatorExtent.
	self lowerHalfIndicator 
		position: self position + (0@ self extent y / 2);
		extent: self cardIndicatorExtent.