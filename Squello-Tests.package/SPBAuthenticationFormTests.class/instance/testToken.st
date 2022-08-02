tests
testToken

	| token |
	self assert: nil equals: auth token.
	
	token := 'Username'.
	auth token: token.
	
	self assert: token equals: auth token.