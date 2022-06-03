as yet unclassified
testActiveCard

	| card |
	
	card := SPBCard new.
	board activeCard: card.
	
	self assert: card equals: board activeCard.