tests
testProvider

	| provider |
	provider := SPBMockGithubBoardProvider new.

	self assert: nil equals: lane provider.
	lane provider: provider.
	self assert: provider equals: lane provider.