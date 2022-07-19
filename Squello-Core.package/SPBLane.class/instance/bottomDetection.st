accessing
bottomDetection
	
	 bottomDetection ifNil: 
		[bottomDetection := SPBIndicatorDetectionLane new lane: self; color: Color transparent].
	
	^ bottomDetection.