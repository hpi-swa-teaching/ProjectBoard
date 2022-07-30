as yet unclassified
testBuildAddLaneButtonPanelSpecWith
	
	| spec child |
	spec := board buildAddColumnButtonPanelSpecWith: board usedBuilder.
	child := spec children at: 1.
	self assert: true equals: (child isKindOf: PluggableActionButtonSpec).
	self assert: board equals: child model.
	self assert: #addColumn equals: child action.