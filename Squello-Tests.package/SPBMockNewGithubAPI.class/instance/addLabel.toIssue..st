labels
addLabel: aString toIssue: anotherString

	"this is not the actual response, just for testing the execution path"
	^ ('{"type":"issue", "action":"add_label", "id": "', aString, '"}') parseAsJson.