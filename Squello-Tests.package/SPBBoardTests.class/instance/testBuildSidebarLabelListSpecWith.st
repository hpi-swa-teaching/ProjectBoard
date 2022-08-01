as yet unclassified
testBuildSidebarLabelListSpecWith
	
	| spec |
	spec := board buildSidebarLabelListSpecWith: board usedBuilder.

	self assert: true equals: (spec isKindOf: PluggableListSpec).
	self assert: #sidebarLabelList equals: spec name.
	self assert: #activeCardLabelList equals: spec list.
	self assert: #labelSelected equals: spec getSelected.
	self assert: #labelSelected: equals: spec setSelected.
	self assert: #dragFromLabels: equals: spec dragItem.
	self assert: #wantsLabelDrop: equals: spec dropAccept.
	self assert: #dropOnLabels:at: equals: spec dropItem.
	self assert: #labelIcon: equals: spec icon.