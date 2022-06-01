startup
newWith: aString

	| instance |
	instance := self new.
	
	(SPBGithubAPI username isNil or: [SPBGithubAPI token isNil]) ifTrue: [SPBUserAuth open].
	(SPBGithubAPI username isNil or: [SPBGithubAPI token isNil]) ifTrue: [^ PopUpMenu inform: 'Authentication dialog was dismissed'].
	
	instance provider parseInputBoardUrl: aString.
	instance provider error isString ifTrue: [^ PopUpMenu inform: ('Getting the board failed: ', (instance provider error))].
	instance buildAndOpen.
	^ instance.
	