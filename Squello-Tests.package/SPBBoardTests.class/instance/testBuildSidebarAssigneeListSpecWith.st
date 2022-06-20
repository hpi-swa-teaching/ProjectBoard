as yet unclassified
testBuildSidebarAssigneeListSpecWith
	
	| spec |
	spec := board buildSidebarAssigneeListSpecWith: board usedBuilder.

	self assert: true equals: (spec isKindOf: PluggableListSpec).
	self assert: board equals: spec model.
	self assert: #sidebarAssigneeList equals: spec name.
	self assert: #activeCardAssigneeList equals: spec list.
	self assert: #assigneeSelected equals: spec getSelected.
	self assert: #assigneeSelected: equals: spec setSelected.
	self assert: #dragFromAssignees: equals: spec dragItem.
	self assert: #wantsAssigneeDrop: equals: spec dropAccept.
	self assert: #dropOnAssignees:at: equals: spec dropItem.