cards
fetchCardsIntoColumns: anOrderedCollection

	"anOrderedCollection => Collection of SPBColumn"
	anOrderedCollection do: [:each | self createCardsFromColumn: each].