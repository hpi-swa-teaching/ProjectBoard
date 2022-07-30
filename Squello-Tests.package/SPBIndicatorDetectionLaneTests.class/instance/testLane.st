as yet unclassified
testLane

	| column |
	column := SPBColumn new.
	indicatorDetection column: column.
	self assert: column equals: indicatorDetection column.