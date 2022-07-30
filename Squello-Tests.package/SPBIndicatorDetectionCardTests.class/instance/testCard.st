as yet unclassified
testCard
	
	| card |
	card := SPBCard new.
	indicatorDetection card: card.
	self assert: card equals: indicatorDetection card.
	