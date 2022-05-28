drag and drop
dropOnPotentialAssignees: anSPBAssignee at: index
	
	(anSPBAssignee isKindOf: SPBAssignee)
		ifFalse: [^ self inform: 'Can only drop assignees'].
	self activeCard assignees remove: anSPBAssignee ifAbsent: [].
	self changed: #potentialAssigneesList.
	self changed: #activeCardAssigneeList.
	self provider deleteAssignees: {anSPBAssignee} fromCard: self activeCard.