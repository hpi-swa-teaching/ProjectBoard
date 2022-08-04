cards
createSingleCard: aNumber into: anSPBColumn

	| cardJson |
	cardJson := self api querySingleCard: aNumber.
	
	"at the moment we can just display issues and pull requests (which have a content_url)"
	(cardJson at: 'content_url') ifNil: [^ self].
	
	^ SPBCard buildNewFromRemote: cardJson into: anSPBColumn.