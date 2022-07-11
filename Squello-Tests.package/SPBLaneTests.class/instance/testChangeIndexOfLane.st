tests
testChangeIndexOfLane
	
	| board usedBuilder otherLane |
	otherLane := SPBLane new id: 1337.
	lane id: 420.
	
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: SPBPluggableResizeScrollPane new id: #laneArea.
	usedBuilder register: PluggablePanelMorph new id: #lane1337.
	usedBuilder register: PluggablePanelMorph new id: #lane420.
	board := SPBBoard new 
		lanes: (OrderedCollection newFrom: {lane . otherLane});
		usedBuilder: usedBuilder.
	lane board: board.
	
	lane changeIndexOfLane: 3.
	self assert: 2 equals: (lane board lanes indexOf: lane).
	self assert: 1 equals: (lane board lanes indexOf: otherLane).