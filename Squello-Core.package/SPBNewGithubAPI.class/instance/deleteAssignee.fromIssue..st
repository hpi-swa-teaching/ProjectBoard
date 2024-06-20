assignees
deleteAssignee: aString fromIssue: anotherString

	"aString => AssigneeID"
	"anotherString => IssueID or PullRequestID"
	| data |
	data := (self getDeleteAssigneeMutation: aString fromIssue: anotherString) parseAsJson.
	^ self postRequestwithData: data.