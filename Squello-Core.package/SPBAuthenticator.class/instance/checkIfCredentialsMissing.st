authentication
checkIfCredentialsMissing

	self username: SPBGithubAPI username.
	self token: SPBGithubAPI token.
	
	^ username isNil or: [token isNil].