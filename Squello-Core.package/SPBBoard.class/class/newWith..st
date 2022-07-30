startup
newWith: aString

	| instance username token |
	instance := self new.
	username := SPBGithubAPI username.
	token := SPBGithubAPI token.

	(username isNil or: [token isNil]) ifTrue: [SPBUserAuth open].
	(username isNil or: [token isNil]) ifTrue: [^ UserDialogBoxMorph inform: 'Authentication dialog was dismissed' title: 'Operation canceled'].
	
	(aString beginsWith: 'https://github.com/') ifFalse: 
		[^ UserDialogBoxMorph inform: 'Invalid repository url' asString title: 'Operation canceled'].
	
	instance
		loadProject: aString;
		buildAndOpen.
	^ instance.