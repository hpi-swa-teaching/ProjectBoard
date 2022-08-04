authentication
checkIfCredentialsMissing

	self username: SPBGithubAPI username.
	self token: SPBGithubAPI token.
	
	^ self username isNil or: [self token isNil].