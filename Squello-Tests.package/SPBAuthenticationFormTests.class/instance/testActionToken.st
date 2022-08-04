tests
testActionToken

	| token |
	self assert: SPBGithubAPI token equals: auth token.
	
	token := 'SeCrEtToKeN'.
	auth updateToken: token.
	
	self assert: token equals: auth token.