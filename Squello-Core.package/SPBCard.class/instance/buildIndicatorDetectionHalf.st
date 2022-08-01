initialization
buildIndicatorDetectionHalf
	
	^ SPBIndicatorDetectionCard new
		extent: self extent x @ (self extent y / 2);
		color: Color transparent;
		card: self;
		yourself.