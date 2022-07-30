tests
testBoard

	| board |
	board := SPBBoard new.
	
	self assert: nil equals: column board.
	column board: board.
	self assert: board equals: column board.