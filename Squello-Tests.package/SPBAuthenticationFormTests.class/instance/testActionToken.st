tests
testActionToken

	| token |
	self assert: SPBAuthenticator token equals: auth token.
	
	token := 'SeCrEtToKeN'.
	auth updateToken: token.
	
	self assert: token equals: auth token.