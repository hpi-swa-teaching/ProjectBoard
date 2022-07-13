assignees
addAssignee: anSPBAssignee toCard: aSPBCard
	
	"aCollection => Collection of SPBAssignees"
	| payload |
	payload := Dictionary newFrom: { 'assignees' -> {anSPBAssignee username} }.
	self api addAssignee: payload toIssue: aSPBCard issueId user: self user repo: self repo.