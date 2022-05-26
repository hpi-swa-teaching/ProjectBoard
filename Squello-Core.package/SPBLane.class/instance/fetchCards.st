creation
fetchCards

	| cards card builder |
	builder := SPBCardBuilder new.
	builder provider: self provider.
	cards := self provider queryCards: self id.
	
	cards withIndexDo:
		[:each :index | (card := builder buildFromRemote: each) openInWorld.
		card lane: self.
		self cards add: card.
		self setFrontCardFor: card in: self cards.
		self pasteup addMorph: card].
	self alignCards.