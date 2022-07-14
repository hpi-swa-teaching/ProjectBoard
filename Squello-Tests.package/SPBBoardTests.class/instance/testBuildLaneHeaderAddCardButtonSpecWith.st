as yet unclassified
testBuildLaneHeaderAddCardButtonSpecWith

	| lane spec |
	lane := SPBLane new
		id: 187;
		title: 'Lane1'.
	spec := board buildLaneHeaderAddCardButtonSpecWith: board usedBuilder and: lane.
	
	self assert: true equals: (spec isKindOf: PluggableActionButtonSpec).
	self assert: lane equals: spec model.