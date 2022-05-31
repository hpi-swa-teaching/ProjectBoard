as yet unclassified
deleteAssignees: aDictionary fromIssue: aNumber user: aString repo: anotherString
	
	"returns Json of updated Issue"
	^	JsonObject new
			at: 'assignees' put: ''.