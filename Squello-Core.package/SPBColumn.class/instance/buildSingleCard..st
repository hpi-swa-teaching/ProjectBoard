creation
buildSingleCard: aJsonObject

	| card |
	card := SPBCard buildFromRemote: aJsonObject into: self.
	self cards remove: card.
	(aJsonObject at: 'card')
		ifNil: [self cards addFirst: card. self alignCards. ^ self].
	self alignCards.