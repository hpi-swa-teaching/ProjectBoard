tests
testActionUsername

	| user |
	
	self assert: SPBAuthenticator username equals: auth username.
	
	user := 'Username'.
	auth updateUsername: user.
	
	self assert: user equals: auth username.