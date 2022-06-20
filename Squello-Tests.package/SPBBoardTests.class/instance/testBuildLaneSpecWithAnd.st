as yet unclassified
testBuildLaneSpecWithAnd

	| spec lane |
	lane := SPBLane new
		id: 187;
		title: 'Lane1'.
	spec := board buildLaneSpecWith: board usedBuilder And: lane.
	self assert: true equals: (self isLane: spec).
	self assert: #lane187 equals: spec name.