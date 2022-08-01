as yet unclassified
testBuildColumnHeaderSpecWith

	| column spec title button |
	column := SPBColumn new
		id: 187;
		title: 'column1'.
	spec := board buildColumnHeaderSpecWith: board usedBuilder and: column.
	title := spec children first.
	button := spec children last.
	
	self assert: true equals: (title isKindOf: PluggableTextSpec).
	self assert: column equals: title model.
	
	self assert: true equals: (button isKindOf: PluggableActionButtonSpec).
	self assert: column equals: button model.