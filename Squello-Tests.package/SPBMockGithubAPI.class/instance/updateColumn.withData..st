as yet unclassified
updateColumn: aNumber withData: aDictionary
	
	"returns Json of updated Issue"
	^	JsonObject new
			at: 'name' put: (aDictionary at: 'name').