cards
fetchCardsIntoColumns: anOrderedCollection

	"anOrderedCollection => Collection of SPBColumn"
	1 to: anOrderedCollection size do: [:i|
			(((self boardJson at: 'columns') at: i) at: 'cards') do: [:cardJson | SPBCard buildFromLocal: cardJson into: (anOrderedCollection at: i)].
		].