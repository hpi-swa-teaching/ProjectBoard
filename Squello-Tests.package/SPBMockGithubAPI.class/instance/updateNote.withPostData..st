as yet unclassified
updateNote: aNumber withPostData: aDictionary
	
	aDictionary at: 'id' put: aNumber.
	self messages add: aDictionary.