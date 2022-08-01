tests
testProvider

	| boardProvider |
	boardProvider := SPBMockGithubBoardProvider new.

	column boardProvider: boardProvider.
	self assert: boardProvider equals: column boardProvider.