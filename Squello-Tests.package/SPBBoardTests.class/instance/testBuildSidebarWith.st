as yet unclassified
testBuildSidebarWith
	
	| spec child1 child2 child3 child4 |
	spec := board buildSidebarSpecWith: board usedBuilder.
	child1 := spec children at: 1.
	child2 := spec children at: 2.
	child3 := spec children at: 3.
	child4 := spec children at: 4.
	
	self assert: true equals: (spec isKindOf: PluggablePanelSpec).
	self assert: true equals: (child1 isKindOf: PluggableTextSpec).
	self assert: true equals: (child2 isKindOf: PluggablePanelSpec).
	self assert: true equals: (child3 isKindOf: PluggablePanelSpec).
	self assert: true equals: (child4 isKindOf: PluggableTextSpec).