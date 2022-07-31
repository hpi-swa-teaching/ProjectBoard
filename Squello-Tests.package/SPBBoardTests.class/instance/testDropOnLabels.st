as yet unclassified
testDropOnLabels

	| activeCard label1 label2 boardProvider |
	activeCard := SPBCard new.
	boardProvider := SPBMockGithubBoardProvider new.
	label1 := SPBLabel new title: 'uncoolesLabel'; id: 1; color: Color red.
	label2 := SPBLabel new title: 'coolesLabel'; id: 2; color: Color green.
	activeCard labels: (OrderedCollection newFrom: {label1}).
	activeCard boardProvider: boardProvider.
	board activeCard: activeCard.
	
	board dropOnLabels: label2 at: 3.
	self assert: (board activeCard labels contains: [:each | each =  label2]).
	self assert: 2 equals: board activeCard labels size.
	self assert: activeCard equals: boardProvider card.
	self assert: label2 equals: boardProvider label.