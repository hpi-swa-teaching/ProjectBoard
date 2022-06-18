tests
testActionUserToken

	| token |
	
	self assert: SPBGithubAPI token equals: auth actionUserToken.
	
	token := 'SeCrEtToKeN'.
	auth actionUserToken: token.
	
	self assert: token equals: auth actionUserToken.