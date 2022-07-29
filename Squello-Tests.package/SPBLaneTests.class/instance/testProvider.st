tests
testProvider

	| boardProvider |
	boardProvider := SPBMockGithubBoardProvider new.

	lane boardProvider: boardProvider.
	self assert: boardProvider equals: lane boardProvider.