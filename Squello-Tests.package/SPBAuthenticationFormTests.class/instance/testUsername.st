tests
testUsername

	| user |
	user := 'Username'.
	auth username: user.
	
	self assert: user equals: auth username.