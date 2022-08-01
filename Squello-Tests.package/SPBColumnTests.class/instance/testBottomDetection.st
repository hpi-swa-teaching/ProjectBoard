tests
testBottomDetection

	| bottomDetection |
	bottomDetection := SPBIndicatorDetectionColumn new column: (SPBColumn new id: 1337).
	
	column bottomDetection: bottomDetection.
	self assert: bottomDetection equals: column bottomDetection.
	self assert: 1337 equals: column bottomDetection column id.