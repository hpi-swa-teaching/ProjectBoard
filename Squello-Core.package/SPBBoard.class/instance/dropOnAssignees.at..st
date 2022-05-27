drag and drop
dropOnAssignees: anSPBAssignee at: index
	
	(anSPBAssignee isKindOf: SPBAssignee)
		ifFalse: [^ self inform: 'Can only drop assignees'].
	self activeCard assignees add: anSPBAssignee.
	self changed: #potentialAssigneesList.
	self changed: #activeCardAssigneeList.
	self provider addAssignees: {anSPBAssignee} toIssue: self activeCard issueId user: self provider user repo: self provider repo.