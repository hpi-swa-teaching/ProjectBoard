as yet unclassified
fetchCardsIntoColumns: anOrderedCollection

	"anOrderedCollection => Collection of SPBColumn"
	anOrderedCollection do: [:each | self createCardsFromColumn: each].