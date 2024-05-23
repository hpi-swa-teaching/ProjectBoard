cards
createNewCard: aDictionary into: anSPBColumn 
	
	^ SPBCard newWithTitle: (aDictionary at: 'title') body: (aDictionary at: 'body') id: self nextId into: anSPBColumn.