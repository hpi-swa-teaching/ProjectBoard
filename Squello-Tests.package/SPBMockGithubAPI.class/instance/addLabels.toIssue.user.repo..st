as yet unclassified
addLabels: aDictionary toIssue: aNumber user: aString repo: anotherString
	
	"returns Json of updated Issue"
	| labels |
	labels := aDictionary at: 'labels'.
	^	JsonObject new
			at: 'labels' put: labels.