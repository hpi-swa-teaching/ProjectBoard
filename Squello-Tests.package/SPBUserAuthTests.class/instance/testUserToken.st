as yet unclassified
testUserToken

	| token |
	
	self assert: nil equals: auth userToken.
	
	token := 'Username'.
	auth userToken: token.
	
	self assert: token equals: auth userToken.