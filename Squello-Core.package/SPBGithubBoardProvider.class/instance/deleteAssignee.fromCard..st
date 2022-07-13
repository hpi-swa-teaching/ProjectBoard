assignees
deleteAssignee: anSPBAssignee fromCard: anSPBCard
	
	| payload |
	payload := Dictionary newFrom: { 'assignees' -> {anSPBAssignee username} }.
	self api deleteAssignee: payload fromIssue: anSPBCard issueId user: self user repo: self repo.