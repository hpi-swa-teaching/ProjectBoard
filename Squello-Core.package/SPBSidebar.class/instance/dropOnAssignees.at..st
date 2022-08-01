drag and drop
dropOnAssignees: anSPBAssignee at: aNumber
	
	anSPBAssignee isAssignee
		ifFalse: [^ self inform: 'Can only drop assignees'].
	
	self activeCard addAssignee: anSPBAssignee.
	self 
		changed: #potentialAssigneesList;
		changed: #activeCardAssigneeList.