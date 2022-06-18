as yet unclassified
testBuildSidebarPotentialAssigneeListSpecWith
	
	| spec |
	spec := board buildSidebarPotentialAssigneeListSpecWith: board usedBuilder.

	self assert: true equals: (spec isKindOf: PluggableListSpec).
	self assert: board equals: spec model.
	self assert: #sidebarPotentialAssigneeList equals: spec name.
	self assert: #potentialAssigneesList equals: spec list.
	self assert: #potentialAssigneeSelected equals: spec getSelected.
	self assert: #potentialAssigneeSelected: equals: spec setSelected.
	self assert: #dragFromPotentialAssignees: equals: spec dragItem.
	self assert: #wantsAssigneeDrop: equals: spec dropAccept.
	self assert: #dropOnPotentialAssignees:at: equals: spec dropItem.