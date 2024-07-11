cards
fetchCardsIntoColumns: anOrderedCollection

	"anOrderedCollection => Collection of SPBColumn"
	
	|cardsJson columnDict |
	cardsJson := (self api queryCardsfromProject: self projectId) asOrderedCollection.
	columnDict := (anOrderedCollection collect: [:each| each id -> each]) as: Dictionary.
	
	cardsJson do: [:each| SPBCard buildFromRemoteProject: each intoColumns: columnDict].