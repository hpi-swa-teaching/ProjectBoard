assignees
deleteAssignee: aString fromIssue: anotherString

	"this is not the actual response, just for testing the execution path"
	^ ('{"type":"issue", "action":"delete_assignee", "id": "', aString, '"}') parseAsJson.