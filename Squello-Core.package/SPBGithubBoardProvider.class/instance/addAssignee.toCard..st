assignees
addAssignee: anSPBAssignee toCard: anSPBCard
	
	"aCollection => Collection of SPBAssignees"
	| payload |
	payload := Dictionary newFrom: {'assignees' -> {anSPBAssignee username}}.
	self api addAssignee: payload toIssue: anSPBCard issueId user: self user repo: self repo.