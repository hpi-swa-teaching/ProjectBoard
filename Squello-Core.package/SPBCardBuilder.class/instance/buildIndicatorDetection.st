building
buildIndicatorDetection
	
	| cardExtent |
	cardExtent := self card extent.
	self card upperHalfMorph:
		(SPBIndicatorDetectionCard new position: self card position - (0 @  SPBLane defaultSpaceBetweenCards); 
			extent: cardExtent x @ ((cardExtent y / 2) + SPBLane defaultSpaceBetweenCards);
			color: Color transparent;
			location: #upper;
			card: self card).
			
	self card lowerHalfMorph:
		(SPBIndicatorDetectionCard new position: self card position x + (0 @ (self card extent y / 2)); 
			extent: cardExtent x @ (cardExtent y / 2);
			color: Color transparent;
			location: #lower;
			card: self card).
			
	self card addMorph: self card upperHalfMorph.
	self card addMorph: self card lowerHalfMorph.