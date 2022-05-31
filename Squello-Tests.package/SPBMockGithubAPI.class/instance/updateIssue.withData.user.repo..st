as yet unclassified
updateIssue: aNumber withData: aDictionary user: aString repo: anotherString
	
	"returns Json of updated Issue"
	^	JsonObject new
			at: 'title' put: 'toller Titel';
			at: 'body' put: 'tolle Description';
			at: 'number' put: 2.