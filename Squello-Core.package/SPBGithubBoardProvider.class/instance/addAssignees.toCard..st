assignees
addAssignees: aCollection toCard: aSPBCard
	
	"aCollection => Collection of SPBAssignees"
	| payload |
	payload := Dictionary newFrom: { 'assignees' -> (aCollection collect: [:aSPBAssignee | aSPBAssignee username]) }.
	self api addAssignees: payload toIssue: aSPBCard issueId user: self user repo: self repo.