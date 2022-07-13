as yet unclassified
deleteAssignee: aDictionary fromIssue: aNumber user: aString repo: anotherString
	
	self messages add: (Dictionary newFrom: {
		#issue -> aNumber.
		#user -> aString.
		#repo -> anotherString.
		#assignee -> aDictionary.
	}).