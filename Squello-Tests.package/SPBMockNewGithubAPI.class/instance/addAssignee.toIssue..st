assignees
addAssignee: aString toIssue: anotherString

	"this is not the actual response, just for testing the execution path"
	^ ('{"type":"issue", "action":"add_assignee", "id": "', aString, '"}') parseAsJson.