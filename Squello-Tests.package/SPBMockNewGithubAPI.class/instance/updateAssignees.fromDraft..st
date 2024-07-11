assignees
updateAssignees: aString fromDraft: anotherString
	
	"this is not the actual response, just for testing the execution path"
	^ ('{"type":"draft", "action":"update_assignees","ids":"', aString, ' "}') parseAsJson.