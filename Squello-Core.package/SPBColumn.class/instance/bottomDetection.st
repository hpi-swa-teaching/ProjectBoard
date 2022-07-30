accessing
bottomDetection
	
	 bottomDetection
		ifNil: [bottomDetection := SPBIndicatorDetectionColumn new column: self; color: Color transparent].
	
	^ bottomDetection.