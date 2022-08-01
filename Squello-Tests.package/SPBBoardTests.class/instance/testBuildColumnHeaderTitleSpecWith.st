as yet unclassified
testBuildColumnHeaderTitleSpecWith

	| column spec |
	column := SPBColumn new
		id: 187;
		title: 'column1'.
	spec := board buildColumnHeaderTitleSpecWith: board usedBuilder and: column.
	
	self assert: true equals: (spec isKindOf: PluggableTextSpec).
	self assert: column equals: spec model.