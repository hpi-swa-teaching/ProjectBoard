as yet unclassified
testBuildAddLaneButtonSpecWith
	
	| spec |
	spec := board buildAddLaneButtonSpecWith: board usedBuilder.
	self assert: true equals: (spec isKindOf: PluggableActionButtonSpec).
	self assert: board equals: spec model.
	self assert: #addLane equals: spec action.