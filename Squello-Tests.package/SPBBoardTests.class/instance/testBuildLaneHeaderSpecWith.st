as yet unclassified
testBuildLaneHeaderSpecWith

	| lane spec title button |
	lane := SPBLane new
		id: 187;
		title: 'Lane1'.
	spec := board buildLaneHeaderSpecWith: board usedBuilder And: lane.
	title := spec children first.
	button := spec children last.
	
	self assert: true equals: (title isKindOf: PluggableTextSpec).
	self assert: lane equals: title model.
	
	self assert: true equals: (button isKindOf: PluggableActionButtonSpec).
	self assert: lane equals: button model.