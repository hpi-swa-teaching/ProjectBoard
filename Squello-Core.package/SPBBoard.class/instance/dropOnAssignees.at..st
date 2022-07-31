drag and drop
dropOnAssignees: anSPBAssignee at: index
	
	(anSPBAssignee isKindOf: SPBAssignee)
		ifFalse: [^ self inform: 'Can only drop assignees'].
	
	self activeCard addAssignee: anSPBAssignee.
	self 
		changed: #potentialAssigneesList;
		changed: #activeCardAssigneeList.