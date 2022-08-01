as yet unclassified
testBuildSidebarLabelPanelSpecWith
	
	| spec child1 child2 |
	spec := board buildSidebarLabelPanelSpecWith: board usedBuilder.
	child1 := spec children at: 1.
	child2 := spec children at: 2.
	
	self assert: true equals: (spec isKindOf: PluggablePanelSpec).
	self assert: #sidebarLabelList equals: spec name.
	self assert: true equals: (child1 isKindOf: PluggableListSpec).
	self assert: true equals: (child1 isKindOf: PluggableListSpec).