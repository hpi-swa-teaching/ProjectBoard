creation
buildSingleCard: aJsonObject

	| builder card |
	builder := SPBCardBuilder new.
	builder provider: self provider.
	builder changeProvider: self changeProvider.
	card := builder buildFromRemote: aJsonObject into: self.
	self cards remove: card.
	(aJsonObject at: 'card')
		ifNil: [self cards addFirst: card. self alignCards. ^ self].
	self alignCards.