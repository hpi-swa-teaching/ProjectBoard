as yet unclassified
testDropOnPotentialLabels

	| activeCard label1 label2 |
	activeCard := SPBCard new.
	activeCard titleMorph: TextMorph new.
	label1 := SPBLabel new title: 'uncoolesLabel'; id: 1; color: Color red.
	label2 := SPBLabel new title: 'coolesLabel'; id: 2; color: Color green.
	activeCard labels: (OrderedCollection newFrom: {label1 . label2}).
	board activeCard: activeCard.
	
	board dropOnPotentialLabels: label1 at: 3.
	self assert: (board activeCard labels contains: [:each | each =  label1]) not.
	self assert: 1 equals: board activeCard labels size.