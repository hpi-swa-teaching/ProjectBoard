actions
actionSubmit

	| oldUsername areCredentialsNil |
	areCredentialsNil := (self username isNil or: [self token isNil]).
	areCredentialsNil ifTrue: [^ self errorEmptyField].
	
	SPBAuthenticator token: self token.
	oldUsername := SPBAuthenticator username.
	SPBAuthenticator username: self username.
	
	(self checkUserValid)
		ifTrue: [self changed: #close]
		ifFalse: [SPBGithubAPI username: oldUsername. 
			^ self errorUserNotFound].