as yet unclassified
testBuildSidebarDescriptionSpecWith
	
	| spec |
	spec := board buildSidebarDescriptionSpecWith: board usedBuilder.
	
	self assert: true equals: (spec isKindOf: PluggableTextSpec).
	self assert: board equals: spec model.
	self assert: #sidebarDescription equals: spec name.
	self assert: #updateActiveCardDescription: equals: spec setText.
	self assert: #activeCardDescription equals: spec getText.