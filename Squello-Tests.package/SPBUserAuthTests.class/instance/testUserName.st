tests
testUserName

	| user |
	
	self assert: nil equals: auth userName.
	
	user := 'Username'.
	auth userName: user.
	
	self assert: user equals: auth userName.