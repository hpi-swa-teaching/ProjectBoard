assignees
deleteAssignee: anSPBAssignee fromIssue: anSPBCard
	
	^ self api deleteAssignee: anSPBAssignee id fromIssue: anSPBCard id. 