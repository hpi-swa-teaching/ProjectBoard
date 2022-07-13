as yet unclassified
addAssignee: aDictionary toIssue: aNumber user: aString repo: anotherString
	
	self messages add: (Dictionary newFrom: {
		#issue -> aNumber.
		#user -> aString.
		#repo -> anotherString.
		#assignee -> aDictionary.
	}).