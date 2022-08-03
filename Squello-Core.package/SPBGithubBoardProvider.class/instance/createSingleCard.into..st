cards
createSingleCard: aNumber into: anSPBColumn

	| cardJson |
	cardJson := self api querySingleCard: aNumber.
	
	"at the moment we can just display issues and pull requests. 
	If a a note is added on github (than it has no content_url) it it won't be build"
	(cardJson at: 'content_url') ifNil: [^ self].
	
	^ SPBCard buildNewFromRemote: cardJson into: anSPBColumn.