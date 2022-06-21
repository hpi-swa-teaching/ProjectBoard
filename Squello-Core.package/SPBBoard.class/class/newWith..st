startup
newWith: aString

	| instance projectNames chosenProject |
	instance := self new.
	
	(SPBGithubAPI username isNil or: [SPBGithubAPI token isNil]) ifTrue: [SPBUserAuth open].
	(SPBGithubAPI username isNil or: [SPBGithubAPI token isNil]) ifTrue: [^ UserDialogBoxMorph inform: 'Authentication dialog was dismissed' title: 'Operation canceled'].
	
	(aString beginsWith: 'https://github.com/') ifFalse: 
		[^ UserDialogBoxMorph inform: 'Invalid repository url' asString title: 'Operation canceled'].
	
	(aString includesSubstring: '/projects') 
	ifTrue:
        [instance provider parseInputBoardUrl: aString]
	ifFalse:
		[instance projects: (instance provider getProjects: aString).
		(instance projects isArray) ifFalse: 
			[^ UserDialogBoxMorph inform: 'Invalid repository url' asString title: 'Operation canceled'].
		projectNames := instance getProjectNames.
		chosenProject := UIManager default chooseFrom: projectNames values: instance projects title: 'Choose your project:'.
		chosenProject ifNil: [^self].
		instance provider parseInputBoardUrl: aString, '/projects/', (chosenProject at: 'number') asString.
		].
	
	instance provider error isString ifTrue: [
		UserDialogBoxMorph inform: ('Getting the board failed with error: ' , instance provider error , '.<n>Do you have access to this project?<n>Is your access token correct and valid?' expandMacros) title: 'Board fetching error'.
		^ SPBUserAuth open.
	].
	instance buildAndOpen.
	^ instance.