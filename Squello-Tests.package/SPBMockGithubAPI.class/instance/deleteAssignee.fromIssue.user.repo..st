as yet unclassified
deleteAssignee: aDictionary fromIssue: aNumber user: aString repo: anotherString
	
	self messages add: {
		#issue -> aNumber.
		#user -> aString.
		#repo -> anotherString.
		#assignee -> aDictionary.
	} asDictionary.