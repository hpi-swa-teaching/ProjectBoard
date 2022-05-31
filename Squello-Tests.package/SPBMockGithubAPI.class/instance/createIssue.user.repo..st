as yet unclassified
createIssue: aDictionary user: aString repo: anotherString
	
	"returns Json of created Issue"
	^	JsonObject new
			at: 'title' put: (aDictionary at: 'title');
			at: 'id' put: 330.