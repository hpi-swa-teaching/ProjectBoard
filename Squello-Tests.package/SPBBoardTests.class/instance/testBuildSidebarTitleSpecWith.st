as yet unclassified
testBuildSidebarTitleSpecWith
	
	| spec |
	spec := board buildSidebarTitleSpecWith: board usedBuilder.

	self assert: true equals: (spec isKindOf: PluggableTextSpec).
	self assert: #sidebarTitle equals: spec name.
	self assert: #updateActiveCardTitle: equals: spec setText.
	self assert: #activeCardTitle equals: spec getText.