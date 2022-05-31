actions
actionSaveAndClose
	| userBool tokenBool |
	userBool := userName isNil.
	tokenBool := userToken isNil.
	userBool ifFalse: [SPBGithubAPI username: userName].
	tokenBool ifFalse: [SPBGithubAPI token: userToken].
	(userBool or: [tokenBool]) ifTrue: [PopUpMenu inform: 'Please enter username and token'] ifFalse: [
		self checkUserValid ifTrue: [self changed: #close] ifFalse: [PopUpMenu inform: 'invalid user'].
		].