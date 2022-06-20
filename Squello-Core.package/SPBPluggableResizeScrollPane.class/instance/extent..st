as yet unclassified
extent: aPoint
	
	super extent: aPoint.
	self model ifNotNil: [self model resizeLaneArea].