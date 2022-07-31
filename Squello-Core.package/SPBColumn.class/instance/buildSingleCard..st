creation
buildSingleCard: aJsonObject

	| card |
	card := self cardBuilder buildFromRemote: aJsonObject into: self.
	self cards remove: card.
	(aJsonObject at: 'card')
		ifNil: [self cards addFirst: card. self alignCards. ^ self].
	self alignCards.