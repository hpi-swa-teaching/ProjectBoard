cards
createSingleCard: aNumber into: anSPBColumn

	| cardJson |
	cardJson := self api querySingleCard: aNumber.
	
	^ SPBCard buildNewFromRemote: cardJson into: anSPBColumn.