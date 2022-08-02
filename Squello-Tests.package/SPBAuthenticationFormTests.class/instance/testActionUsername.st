tests
testActionUsername

	| user |
	
	self assert: SPBGithubAPI username equals: auth actionUsername.
	
	user := 'Username'.
	auth actionUsername: user.
	
	self assert: user equals: auth actionUsername.