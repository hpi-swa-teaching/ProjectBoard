drag and drop
dropOnPotentialAssignees: anSPBAssignee at: aNumber
	
	anSPBAssignee isAssignee
		ifFalse: [^ self inform: 'Can only drop assignees'].
	
	self activeCard removeAssignee: anSPBAssignee.
	self 
		changed: #potentialAssigneesList;
		changed: #activeCardAssigneeList.