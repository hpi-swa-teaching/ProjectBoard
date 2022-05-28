assignees
deleteAssignees: aCollection fromCard: aSPBCard
	
	"aCollection => Collection of SPBAssignees"
	| payload |
	payload := Dictionary newFrom: { 'assignees' -> (aCollection collect: [:assignee | assignee username])}.
	self api deleteAssignees: payload fromIssue: aSPBCard issueId user: self user repo: self repo.