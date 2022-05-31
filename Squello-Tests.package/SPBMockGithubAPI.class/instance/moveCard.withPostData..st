as yet unclassified
moveCard: aNumber withPostData: aDictionary
	
	^  'moved ', aNumber, 
		' to ', (aDictionary at: 'column_id'), 
		' and position ', (aDictionary at: 'position').