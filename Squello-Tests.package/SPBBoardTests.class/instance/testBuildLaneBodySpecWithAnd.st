as yet unclassified
testBuildLaneBodySpecWithAnd

	| lane spec pasteup |
	lane := SPBLane new
		id: 187;
		title: 'Lane1'.
	spec := board buildLaneBodySpecWith: board usedBuilder and: lane.
	pasteup := spec children first.
	
	self assert: true equals: (spec isKindOf: PluggableScrollPaneSpec).
	self assert: board equals: spec model.
	
	self assert: true equals: (pasteup isKindOf: SPBPluggablePasteUpSpec).
	self assert: lane equals: pasteup model.
	self assert: 187 equals: pasteup name.