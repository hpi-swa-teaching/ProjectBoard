as yet unclassified
testBuildLaneSpecWithAnd

	| spec column |
	column := SPBColumn new
		id: 187;
		title: 'column1'.
	spec := board buildColumnSpecWith: board usedBuilder and: column.
	self assert: true equals: (self isColumn: spec).
	self assert: #column187 equals: spec name.