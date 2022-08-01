initialization
buildIndicatorDetection
	
	| extent |
	extent := self extent.
	self upperHalfMorph: (self buildIndicatorDetectionHalf
		position: self position - (0 @  SPBColumn defaultSpaceBetweenCards);
		location: #upper;
		yourself).
			
	self lowerHalfMorph: (self buildIndicatorDetectionHalf
		position: self position x + (0 @ (extent y / 2));
		location: #lower;
		yourself).
		
	self
		addMorph: self upperHalfMorph;
		addMorph: self lowerHalfMorph.