as yet unclassified
testBuildLaneAreaSpecWith

	| spec |
	
	spec := board buildLaneAreaSpecWith: board usedBuilder.
	
	self assert: true equals: (spec isKindOf: SPBPluggableResizeScrollPaneSpec).
	self assert: board equals: spec model.