actions
actionSaveAndClose

	| tempName |
	(self username)
		ifNil: [self username: SPBGithubAPI username].
	(self token)
		ifNil: [self token: SPBGithubAPI token].
	(self username isNil or: [self token isNil])
		ifTrue: [^ UserDialogBoxMorph inform: 'Please enter username and token.' title: 'Invalid input'].
	
	SPBGithubAPI token: self token.
	tempName := SPBGithubAPI username.
	SPBGithubAPI username: self username.
	
	(self checkUserValid)
		ifTrue: [self changed: #close]
		ifFalse: [SPBGithubAPI username: tempName.
				UserDialogBoxMorph inform: 'You entered a username that doesn''t exist on GitHub.' title: 'Invalid input'].