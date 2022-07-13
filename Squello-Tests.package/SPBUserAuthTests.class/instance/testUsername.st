tests
testUsername

	| user |
	self assert: nil equals: auth username.
	
	user := 'Username'.
	auth username: user.
	
	self assert: user equals: auth username.