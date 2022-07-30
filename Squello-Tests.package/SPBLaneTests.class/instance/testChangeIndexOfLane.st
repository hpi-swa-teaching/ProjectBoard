tests
testChangeIndexOfLane
	
	| board usedBuilder otherColumn |
	otherColumn := SPBColumn new id: 1337.
	column id: 420.
	
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: SPBPluggableResizeScrollPane new id: #columnArea.
	usedBuilder register: PluggablePanelMorph new id: #column1337.
	usedBuilder register: PluggablePanelMorph new id: #column420.
	board := SPBBoard new 
		columns: (OrderedCollection newFrom: {column . otherColumn});
		usedBuilder: usedBuilder.
	column board: board.
	
	column changeIndexOfColumn: 3.
	self assert: 2 equals: (column board columns indexOf: column).
	self assert: 1 equals: (column board columns indexOf: otherColumn).