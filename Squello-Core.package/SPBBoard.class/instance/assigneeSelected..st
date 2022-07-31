accessing
assigneeSelected: anSPBAssignee
	
	(anSPBAssignee isKindOf: SPBAssignee) 
		ifFalse: [^ self].
	assigneeSelected := anSPBAssignee.
	self changed: #assigneeSelected.