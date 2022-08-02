initialization
buildIndicatorDetection
	
	| extent |
	extent := self extent.
	self upperHalfIndicator: (self buildIndicatorDetectionHalf
		position: self position - (0@  SPBColumn defaultSpaceBetweenCards);
		location: #upper;
		yourself).
			
	self lowerHalfIndicator: (self buildIndicatorDetectionHalf
		position: self position x + (0@ (extent y / 2));
		location: #lower;
		yourself).
		
	self
		addMorph: self upperHalfIndicator;
		addMorph: self lowerHalfIndicator.