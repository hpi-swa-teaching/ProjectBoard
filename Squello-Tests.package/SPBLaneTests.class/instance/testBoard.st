tests
testBoard

	| board |
	board := SPBBoard new.
	
	self assert: nil equals: lane board.
	lane board: board.
	self assert: board equals: lane board.