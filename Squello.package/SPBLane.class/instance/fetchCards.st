creation
fetchCards

	| cards newCard builder cardsInLane |
	builder := SPBCardBuilder new.
	builder provider: self provider.
	cards := self provider queryCards: self id.
	1 to: cards size do: 
		[:i | (newCard := builder buildFromRemote: (cards at: i)) openInWorld.
		newCard lane: self.
		cardsInLane := self board laneCardLinkage at: self id.
		cardsInLane add: newCard.
		self setFrontCardFor: newCard in: cardsInLane.
		self addMorph: newCard.
		newCard position: (self position x + 10) @ (self position y + 70 + ((i-1) * 120))].