tests
testActiveCard

	| board card |
	card := SPBCard new id: 1337.
	board := SPBBoard new
		sidebar: (SPBSidebar new activeCard: card).
	column board: board.
	
	self assert: card equals: column activeCard.