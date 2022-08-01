as yet unclassified
testDragFromPotentialLabels

	| activeCard label1 label2 |
	activeCard := SPBCard new.
	activeCard labels: (OrderedCollection newFrom: {}).
	label1 := SPBLabel new title: 'uncoolesLabel'.
	label2 := SPBLabel new title: 'coolesLabel'.
	sidebar potentialLabels: (OrderedCollection newFrom: {label1 . label2}).
	sidebar activeCard: activeCard.
	
	self assert: label2 equals: (sidebar dragFromPotentialLabels: 2).