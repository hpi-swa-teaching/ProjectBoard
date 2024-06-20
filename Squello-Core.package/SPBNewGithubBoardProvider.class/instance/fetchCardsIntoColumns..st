cards
fetchCardsIntoColumns: anOrderedCollection

	"anOrderedCollection => Collection of SPBColumn"
	
	|cardsJson columnDict |
	cardsJson := (self api queryCardsfromProject: self projectId) asOrderedCollection.
	columnDict := (anOrderedCollection collect: [:each| each id -> each]) asDictionary.
	
	cardsJson do: [:each| SPBCard buildFromRemoteProject: each intoColumns: columnDict].