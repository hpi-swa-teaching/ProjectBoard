labels
addLabel: aString toIssue: anotherString

	"aString => LabelID"
	"anotherString => IssueID or PullRequestID"
	| data |
	data := (self getAddLabelMutation: aString toIssue: anotherString) parseAsJson.
	^ self postRequestwithData: data.