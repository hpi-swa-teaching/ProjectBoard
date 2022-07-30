as yet unclassified
testLane

	| lane |
	lane := SPBLane new.
	indicatorDetection column: lane.
	self assert: lane equals: indicatorDetection column.