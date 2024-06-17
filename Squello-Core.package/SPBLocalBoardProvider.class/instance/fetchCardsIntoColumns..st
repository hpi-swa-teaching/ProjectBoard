cards
fetchCardsIntoColumns: anOrderedCollection

	"anOrderedCollection => Collection of SPBColumn"
	anOrderedCollection do: [:each | each fetchAndBuildCards].