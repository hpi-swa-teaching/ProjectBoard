as yet unclassified
testBuildColumnSpecWith

	| specs column1 column2 |
	column1 := SPBColumn new
		id: 187;
		title: 'column1'. 
	column2 := SPBColumn new
		id: 42;
		title: 'column2'.
	board columns: {column1 . column2} asOrderedCollection.
	
	specs := board buildColumnSpecWith: board usedBuilder.
	
	self assert: true equals: (specs isKindOf: OrderedCollection).
	specs do: [:each | self assert: true equals: (self isColumn: each)].