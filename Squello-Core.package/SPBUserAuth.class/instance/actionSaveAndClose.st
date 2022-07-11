actions
actionSaveAndClose

	| tempName |
	self userName ifNil: [self userName: SPBGithubAPI username].
	self userToken ifNil: [self userToken: SPBGithubAPI token].
	(self userName isNil or: [self userToken isNil])
		ifTrue: [^ UserDialogBoxMorph inform: 'Please enter username and token.' title: 'Invalid input'].
	SPBGithubAPI token: self userToken.
	tempName := SPBGithubAPI username.
	SPBGithubAPI username: self userName.
	self checkUserValid
		ifTrue: 
			[self changed: #close]
		ifFalse: 
			[SPBGithubAPI username: tempName.
			UserDialogBoxMorph 
				inform: 'You entered a username that doesn''t exist on GitHub.' title: 'Invalid input'].