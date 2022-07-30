accessing
bottomDetection
	
	 bottomDetection ifNil: 
		[bottomDetection := SPBIndicatorDetectionLane new lane: self; color: Color green].
	
	^ bottomDetection.