accessing
assigneeSelected: anSPBAssignee
	
	anSPBAssignee isAssignee
		ifFalse: [^ self].
	assigneeSelected := anSPBAssignee.
	self changed: #assigneeSelected.