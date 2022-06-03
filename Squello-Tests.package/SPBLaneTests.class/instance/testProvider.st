tests
testProvider

	| provider |
	provider := SPBMockGithubBoardProvider new.

	lane provider: provider.
	self assert: provider equals: lane provider.