as yet unclassified
testProvider

	| boardProvider |
	
	boardProvider := SPBGithubBoardProvider new.
	board boardProvider: boardProvider.
	
	self assert: boardProvider equals: board boardProvider.