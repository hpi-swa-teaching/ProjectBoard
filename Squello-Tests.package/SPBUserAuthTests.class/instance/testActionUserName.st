as yet unclassified
testActionUserName

	| user |
	
	self assert: SPBGithubAPI username equals: auth actionUserName.
	
	user := 'Username'.
	auth actionUserName: user.
	
	self assert: user equals: auth actionUserName.