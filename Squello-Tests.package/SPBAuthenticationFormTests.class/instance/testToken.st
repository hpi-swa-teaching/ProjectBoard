tests
testToken

	| token |
	token := 'Username'.
	auth token: token.
	
	self assert: token equals: auth token.