as yet unclassified
testDragFromPotentialLabels

	| activeCard label1 label2 |
	activeCard := SPBCard new.
	activeCard labels: (OrderedCollection newFrom: {}).
	label1 := SPBLabel new title: 'uncoolesLabel'.
	label2 := SPBLabel new title: 'coolesLabel'.
	board potentialLabels: (OrderedCollection newFrom: {label1 . label2}).
	board activeCard: activeCard.
	
	self assert: label2 equals: (board dragFromPotentialLabels: 2).