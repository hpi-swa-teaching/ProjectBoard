as yet unclassified
testLocation
	
	| location |
	location := #lower.
	indicatorDetection location: location.
	self assert: location equals: indicatorDetection location.
	