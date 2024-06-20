assignees
addAssignee: aString toIssue: anotherString

	"aString => AssigneeID"
	"anotherString => IssueID or PullRequestID"
	| data |
	data := (self getAddAssigneeMutation: aString toIssue: anotherString) parseAsJson.
	^ self postRequestwithData: data.