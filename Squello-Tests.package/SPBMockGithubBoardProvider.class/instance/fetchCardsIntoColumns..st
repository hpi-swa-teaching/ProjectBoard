as yet unclassified
fetchCardsIntoColumns: anOrderedCollection

	"anOrderedCollection => Collection of SPBColumn"
	anOrderedCollection do: [:each | each fetchAndBuildCards].