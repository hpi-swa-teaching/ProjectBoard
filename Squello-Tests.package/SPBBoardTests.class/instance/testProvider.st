as yet unclassified
testProvider

	| provider |
	
	provider := SPBGithubBoardProvider new.
	board provider: provider.
	
	self assert: provider equals: board provider.