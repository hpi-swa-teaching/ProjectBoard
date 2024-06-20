tests
testLastCardInEmpty

	| card |
	card := SPBCard new id: 42.
	self assert: false equals: (column isLastCard: card).