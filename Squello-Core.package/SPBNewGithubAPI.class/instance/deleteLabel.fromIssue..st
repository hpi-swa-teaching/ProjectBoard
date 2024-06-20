labels
deleteLabel: aString fromIssue: anotherString

	"aString => LabelID"
	"anotherString => IssueID or PullRequestID"
	| data |
	data := (self getRemoveLabelMutation: aString fromIssue: anotherString) parseAsJson.
	^ self postRequestwithData: data.