as yet unclassified
testActiveCard

	| card |
	card := SPBCard new.
	sidebar activeCard: card.
	
	self assert: card equals: sidebar activeCard.