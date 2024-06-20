assignees
updateAssignees: aString fromDraft: anotherString

	"aString => Array of the new AssigneeIDs"
	"anotherString => IssueID or PullRequestID"
	| data |
	data := (self getUpdateAssigneesMutation: aString fromDraft: anotherString) parseAsJson.
	^ self postRequestwithData: data.