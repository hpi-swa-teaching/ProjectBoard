as yet unclassified
testLaneCardLinkage

	| linkage |
	linkage := Dictionary newFrom: {}.
	
	self assert: nil equals: board laneCardLinkage.
	board laneCardLinkage: linkage.
	self assert: linkage equals: board laneCardLinkage.