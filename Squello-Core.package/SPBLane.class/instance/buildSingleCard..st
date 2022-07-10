as yet unclassified
buildSingleCard: aJsonObject

	| builder card |
	builder := SPBCardBuilder new.
	builder provider: self provider.
	builder changeProvider: self changeProvider.
	card := builder buildFromRemote: aJsonObject into: self.
	self cards remove: card.
	(aJsonObject at: 'card')
		ifNil: [self cards addFirst: card. self alignCards. ^ self].
	"GitHub doesn't provide after_id when a card is created, don't know why"
	"prevCard := self cards detect: [:each | each id = (aJsonObject at: 'card')].
	self cards add: card after: prevCard."
	self alignCards.