as yet unclassified
dropOnAssigneeList: anSPBAssignee at: index
	
	(anSPBAssignee isKindOf: SPBAssignee)
		ifFalse: [^ self inform: 'Can only drop assignees'].
	self activeCard assignees add: anSPBAssignee.
	self changed: #potentialAssigneesList.
	self changed: #activeCardAssigneeList.