cards
createCardsFromColumn: aSPBColumn 
	
	| cardsJson |
	cardsJson := ((self boardJson at: 'columns') at: aSPBColumn id asString) at: 'cards'.
	
	cardsJson
		do: [:cardJson | SPBCard buildFromLocal: cardJson into: aSPBColumn].