as yet unclassified
testBuildColumnHeaderAddCardButtonSpecWith

	| column spec |
	column := SPBColumn new
		id: 187;
		title: 'Column1'.
	spec := board buildColumnHeaderAddCardButtonSpecWith: board usedBuilder and: column.
	
	self assert: true equals: (spec isKindOf: PluggableActionButtonSpec).
	self assert: column equals: spec model.