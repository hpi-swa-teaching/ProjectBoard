as yet unclassified
testBuildLanesSpecWith

	| specs lane1 lane2 |
	lane1 := SPBLane new
		id: 187;
		title: 'Lane1'. 
	lane2 := SPBLane new
		id: 42;
		title: 'Lane2'.
	board lanes: {lane1 . lane2} asOrderedCollection.
	
	specs := board buildLanesSpecWith: board usedBuilder.
	
	self assert: true equals: (specs isKindOf: OrderedCollection).
	specs do: [:each | self assert: true equals: (self isLane: each)].