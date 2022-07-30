as yet unclassified
testUpdateLanesAndSidebar

	| usedBuilder |
	usedBuilder := SPBMorphicToolBuilder new.
	usedBuilder register: SPBPluggableResizeScrollPane new id: #columnArea.
	usedBuilder register: PluggablePanelMorph new id: #sidebar.
	board window: PluggableSystemWindow new.
	board usedBuilder: usedBuilder.
	board columns: (OrderedCollection newFrom: {}).
	
	board updateColumnsAndSidebar.
	
	self assert: (board usedBuilder widgetAt: #columnArea) isNil not.
	self assert: (board usedBuilder widgetAt: #sidebar) isNil not.