as yet unclassified
testUpdateLanesAndSidebar

	| usedBuilder |
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: SPBPluggableResizeScrollPane new id: #laneArea.
	usedBuilder register: PluggablePanelMorph new id: #sidebar.
	board window: PluggableSystemWindow new.
	board usedBuilder: usedBuilder.
	board lanes: (OrderedCollection newFrom: {}).
	
	board updateLanesAndSidebar.
	
	self assert: (board usedBuilder widgetAt: #laneArea) isNil not.
	self assert: (board usedBuilder widgetAt: #sidebar) isNil not.