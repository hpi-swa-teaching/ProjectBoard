initialize-release
loadProject: aString

	| chosenProject projectNames projects |
	(aString includesSubstring: '/projects') 
	ifTrue:
        [self provider parseInputBoardUrl: aString]
	ifFalse:
		[projects := (self provider getProjects: aString).
		(projects isArray) ifFalse: 
			[^ UserDialogBoxMorph inform: 'Invalid repository url' asString title: 'Operation canceled'].
		projectNames := projects collect: [:each | each at: 'name'].
		chosenProject := UIManager default chooseFrom: projectNames values: projects title: 'Choose your project:'.
		chosenProject ifNil: [^self].
		self provider
			projectID: (chosenProject at: 'id');
			projectTitle: (chosenProject at: 'name')].
		
	self changeProvider projectId: self provider projectID.
	self changeProvider api getWebhookChanges: self changeProvider webhookId.