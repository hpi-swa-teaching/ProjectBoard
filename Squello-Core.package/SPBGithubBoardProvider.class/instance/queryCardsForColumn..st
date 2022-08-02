cards
queryCardsForColumn: anSPBColumn

	^ (self api queryCards: anSPBColumn id)
			"collect: [:cardJson | SPBCard newFrom: cardJson]".