accessing
bottomDetection
	
	 bottomDetection ifNil: 
		[bottomDetection := SPBIndicatorDetectionLane new color: Color green; lane: self].
	
	^ bottomDetection.