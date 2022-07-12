building
buildIndicatorDetection
	
	self card upperHalfMorph:
		(SPBIndicatorDetection new position: self card position; 
			extent: self card extent x @ (self card extent y / 2);
			color: Color transparent;
			location: #upper;
			card: self card).
			
	self card lowerHalfMorph:
		(SPBIndicatorDetection new position: 0 @ (self card position y + (self card extent y / 2)); 
			extent: self card extent x @ (self card extent y / 2);
			color: Color transparent;
			location: #lower;
			card: self card).
			
	self card addMorph: self card upperHalfMorph.
	self card addMorph: self card lowerHalfMorph.