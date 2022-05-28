creation
fetchCards

	| cards card builder |
	builder := SPBCardBuilder new.
	builder provider: self provider.
	cards := self provider queryCards: self id.
	cards withIndexDo:
		[:each :index | (card := builder buildFromRemote: each into: self)].
	self alignCards.