as yet unclassified
addAssignees: aDictionary toIssue: aNumber user: aString repo: anotherString
	
	"returns Json of updated Issue"
	| assignees |
	assignees := aDictionary at: 'assignees'.
	^	JsonObject new
			at: 'assignees' put: assignees.