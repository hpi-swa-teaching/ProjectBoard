cards
createCardsFromColumn: anSPBColumn
	
	| cardsJson |
	cardsJson := (self api queryCards: anSPBColumn id) asOrderedCollection.
	
	cardsJson
		do: [:cardJson | SPBCard buildFromRemote: cardJson into: anSPBColumn].