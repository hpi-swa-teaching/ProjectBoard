tests
testActionUsername

	| user |
	
	self assert: SPBGithubAPI username equals: auth username.
	
	user := 'Username'.
	auth updateUsername: user.
	
	self assert: user equals: auth username.