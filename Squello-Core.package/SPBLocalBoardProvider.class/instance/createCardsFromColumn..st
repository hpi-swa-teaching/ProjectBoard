cards
createCardsFromColumn: aSPBColumn 
	
	| cards |
	cards := aSPBColumn cards.
	aSPBColumn cards: OrderedCollection new.
	cards do: [:card| card setCardColumn: aSPBColumn].