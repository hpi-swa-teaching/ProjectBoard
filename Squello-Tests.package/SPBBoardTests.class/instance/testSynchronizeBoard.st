as yet unclassified
testSynchronizeBoard

	| usedBuilder |
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: SPBPluggableResizeScrollPane new id: #laneArea.
	usedBuilder register: PluggablePanelMorph new id: #sidebar.
	usedBuilder register: SPBPluggablePasteUpMorph new id: 1234.
	usedBuilder register: SPBPluggablePasteUpMorph new id: 5678.
	
	board window: PluggableSystemWindow new.
	board usedBuilder: usedBuilder.
	board lanes: (OrderedCollection newFrom: {}).
	
	board synchronizeBoard.