as yet unclassified
testBuildLaneAreaSpecWith

	| spec |
	
	spec := board buildColumnAreaSpecWith: board usedBuilder.
	
	self assert: true equals: (spec isKindOf: SPBPluggableResizeScrollPaneSpec).
	self assert: board equals: spec model.