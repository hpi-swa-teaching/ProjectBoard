cards
createCardsFromColumn: anSPBColumn
	
	| cardsJson onlyIssueCardsJson |
	cardsJson := (self api queryCards: anSPBColumn id) asOrderedCollection.
	
	"at the moment we can just display issues and pull requests. 
	If a card is a note (than it has no content_url) it will be skipped"
	onlyIssueCardsJson := cardsJson
		reject: [:cardJson | (cardJson at: 'content_url') isNil].
	
	onlyIssueCardsJson
		do: [:cardJson | SPBCard buildFromRemote: cardJson into: anSPBColumn].