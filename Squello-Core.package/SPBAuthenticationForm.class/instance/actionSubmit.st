actions
actionSubmit

	| oldUsername areCredentialsNil |
	areCredentialsNil := (self username isNil or: [self token isNil]).
	areCredentialsNil ifTrue: [^ self errorEmptyField].
	
	SPBGithubAPI token: self token.
	oldUsername := SPBGithubAPI username.
	SPBGithubAPI username: self username.
	
	(self checkUserValid)
		ifTrue: [self changed: #close]
		ifFalse: [SPBGithubAPI username: oldUsername. 
			^ self errorUserNotFound].