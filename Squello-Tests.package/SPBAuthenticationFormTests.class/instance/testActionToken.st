tests
testActionToken

	| token |
	self assert: SPBGithubAPI token equals: auth actionToken.
	
	token := 'SeCrEtToKeN'.
	auth actionToken: token.
	
	self assert: token equals: auth actionToken.