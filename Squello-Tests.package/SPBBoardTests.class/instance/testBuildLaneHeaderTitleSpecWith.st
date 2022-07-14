as yet unclassified
testBuildLaneHeaderTitleSpecWith

	| lane spec |
	lane := SPBLane new
		id: 187;
		title: 'Lane1'.
	spec := board buildLaneHeaderTitleSpecWith: board usedBuilder and: lane.
	
	self assert: true equals: (spec isKindOf: PluggableTextSpec).
	self assert: lane equals: spec model.