as yet unclassified
testBuildSidebarPotentialLabelListSpecWith
	
	| spec |
	spec := board buildSidebarPotentialLabelListSpecWith: board usedBuilder.

	self assert: true equals: (spec isKindOf: PluggableListSpec).
	self assert: #sidebarPotentialLabelList equals: spec name.
	self assert: #potentialLabelsList equals: spec list.
	self assert: #potentialLabelSelected equals: spec getSelected.
	self assert: #potentialLabelSelected: equals: spec setSelected.
	self assert: #dragFromPotentialLabels: equals: spec dragItem.
	self assert: #wantsLabelDrop: equals: spec dropAccept.
	self assert: #dropOnPotentialLabels:at: equals: spec dropItem.
	self assert: #potentialLabelIcon: equals: spec icon.