accessing
potentialAssigneeSelected: anSPBAssignee
	
	anSPBAssignee isAssignee
		ifFalse: [^ self].
	potentialAssigneeSelected := anSPBAssignee.
	self changed: #potentialAssigneeSelected.