as yet unclassified
testBuildAddLaneButtonSpecWith
	
	| spec |
	spec := board buildAddColumnButtonSpecWith: board usedBuilder.
	self assert: true equals: (spec isKindOf: PluggableActionButtonSpec).
	self assert: board equals: spec model.
	self assert: #addColumn equals: spec action.