cards
createCardsFromColumn: anSPBColumn

	| cardsJson |
	self flag: #TODO.
	"TODO: refactor to one query for whole project"
	cardsJson := (self api queryCards: anSPBColumn id fromProject: self projectId) asOrderedCollection.
	
	cardsJson do: [:each| SPBCard buildFromRemote: each into: anSPBColumn].