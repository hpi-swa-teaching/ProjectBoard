as yet unclassified
updateIssue: aNumber withData: aDictionary user: aString repo: anotherString
	
	aDictionary at: 'number' put: aNumber.
	self messages add: aDictionary.