as yet unclassified
testBuildSidebarSpecWith
	
	| spec |
	spec := board buildSidebarTitleSpecWith: board usedBuilder.

	self assert: true equals: (spec isKindOf: PluggableTextSpec).
	self assert: board equals: spec model.
	self assert: #sidebarTitle equals: spec name.
	self assert: #updateActiveCardTitle: equals: spec setText.
	self assert: #activeCardTitle equals: spec getText.