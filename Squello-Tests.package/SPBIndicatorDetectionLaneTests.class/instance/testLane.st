as yet unclassified
testLane

	| lane |
	lane := SPBLane new.
	indicatorDetection lane: lane.
	self assert: lane equals: indicatorDetection lane.