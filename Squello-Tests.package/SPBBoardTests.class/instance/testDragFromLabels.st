as yet unclassified
testDragFromLabels

	| activeCard label1 label2 |
	activeCard := SPBCard new.
	label1 := SPBLabel new title: 'uncoolesLabel'.
	label2 := SPBLabel new title: 'coolesLabel'.
	activeCard labels: (OrderedCollection newFrom: {label1 . label2}).
	board activeCard: activeCard.
	
	self assert: label2 equals: (board dragFromLabels: 2).
	