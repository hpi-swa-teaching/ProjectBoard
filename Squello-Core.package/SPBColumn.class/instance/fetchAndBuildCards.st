creation
fetchAndBuildCards
	
	(self boardProvider queryCardsForColumn: self) asOrderedCollection
		do: [:cardJson | SPBCard buildFromRemote: cardJson into: self].
