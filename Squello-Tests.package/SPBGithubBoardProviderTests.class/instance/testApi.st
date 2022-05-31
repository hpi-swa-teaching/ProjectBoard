tests
testApi

	| api |
	api := SPBMockGithubAPI new.
	provider api: api.
	self assert: api equals: provider api.
	