startup
newWith: aString

	| instance |
	instance := self new.
	
	(SPBGithubAPI username isNil or: [SPBGithubAPI token isNil]) ifTrue: [SPBUserAuth open].
	(SPBGithubAPI username isNil or: [SPBGithubAPI token isNil]) ifTrue: [^ UserDialogBoxMorph inform: 'Authentication dialog was dismissed' title: 'Operation canceled'].
	
	(aString beginsWith: 'https://github.com/') ifFalse: 
		[^ UserDialogBoxMorph inform: 'Invalid repository url' asString title: 'Operation canceled'].
	
	instance
		loadProject: aString;
		buildAndOpen.
	^ instance.