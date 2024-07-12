cards
createSingleCard: aNumber into: anSPBColumn

	| cardJson |
	cardJson := self api querySingleCard: aNumber.
	
	(cardJson at: 'content_url') ifNil: [^ self].
	
	^ SPBCard buildNewFromRemote: cardJson into: anSPBColumn.