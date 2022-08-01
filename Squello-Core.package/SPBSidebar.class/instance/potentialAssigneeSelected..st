accessing
potentialAssigneeSelected: anSPBAssignee
	
	(anSPBAssignee isKindOf: SPBAssignee)
		ifFalse: [^ self].
	potentialAssigneeSelected := anSPBAssignee.
	self changed: #potentialAssigneeSelected.