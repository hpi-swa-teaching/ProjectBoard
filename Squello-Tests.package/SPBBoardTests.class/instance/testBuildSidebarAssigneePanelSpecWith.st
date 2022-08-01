as yet unclassified
testBuildSidebarAssigneePanelSpecWith
	
	| spec child1 child2 |
	spec := board buildSidebarAssigneePanelSpecWith: board usedBuilder.
	child1 := spec children at: 1.
	child2 := spec children at: 2.
	
	self assert: true equals: (spec isKindOf: PluggablePanelSpec).
	self assert: #sidebarAssigneeList equals: spec name.
	self assert: true equals: (child1 isKindOf: PluggableListSpec).
	self assert: true equals: (child2 isKindOf: PluggableListSpec).