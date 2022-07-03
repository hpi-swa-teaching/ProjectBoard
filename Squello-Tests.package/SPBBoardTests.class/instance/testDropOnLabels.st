as yet unclassified
testDropOnLabels

	| activeCard label1 label2 |
	activeCard := SPBCard new.
	activeCard titleMorph: TextMorph new.
	label1 := SPBLabel new title: 'uncoolesLabel'; id: 1; color: Color red.
	label2 := SPBLabel new title: 'coolesLabel'; id: 2; color: Color green.
	activeCard labels: (OrderedCollection newFrom: {label1}).
	board activeCard: activeCard.
	
	board dropOnLabels: label2 at: 3.
	self assert: (board activeCard labels contains: [:each | each =  label2]).
	self assert: 2 equals: board activeCard labels size.
	