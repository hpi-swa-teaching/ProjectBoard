as yet unclassified
fetchCardsFor: aDictionary

	| cards newCard builder |
	builder := SPBCardBuilder new.
	builder provider: self provider.
	cards := self provider queryCards: self id.
	1 to: cards size do: 
		[:i | (newCard := builder buildFromRemote: (cards at: i)) openInWorld.
		newCard lane: self id.
		(aDictionary at: self id) add: newCard.
		self addMorph: newCard.
		newCard position: (self position x + 10) @ (self position y + 60 + ((i-1) * 120))].