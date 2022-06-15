startup
newWith: aString

	| instance |
	instance := self new.
	
	(SPBGithubAPI username isNil or: [SPBGithubAPI token isNil]) ifTrue: [SPBUserAuth open].
	(SPBGithubAPI username isNil or: [SPBGithubAPI token isNil]) ifTrue: [^ UserDialogBoxMorph inform: 'Authentication dialog was dismissed' title: 'Operation canceled'].
	
	
	(aString includesSubstring: '/projects') 
    ifTrue:
        [instance provider parseInputBoardUrl: aString] 
    ifFalse:
        [instance projects: (instance provider getProjects: aString).
		SPBProjectSelection currentProjects: instance getProjectNames.
		SPBProjectSelection open.
		(SPBProjectSelection currentProject) ifNil: [^self].
		instance provider parseInputBoardUrl: aString, '/projects/', SPBProjectSelection currentProject.
		].
	
	instance provider error isString ifTrue: [
		UserDialogBoxMorph inform: ('Getting the board failed with error: ' , instance provider error , '.<n>Do you have access to this project?<n>Is your access token correct and valid?' expandMacros) title: 'Board fetching error'.
		^ SPBUserAuth open.
	].
	instance buildAndOpen.
	^ instance.
	