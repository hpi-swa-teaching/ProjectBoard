creation
fetchCards
	
	self jsonCards: (self boardProvider queryCardsForColumn: self) asOrderedCollection.
