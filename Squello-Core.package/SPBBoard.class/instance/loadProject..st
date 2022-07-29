initialize-release
loadProject: aString

	| chosenProject projectNames projects |
	(aString includesSubstring: '/projects')  
		ifTrue: [self boardProvider parseInputBoardUrl: aString]
		ifFalse: [projects := (self boardProvider getProjects: aString).
			(projects isArray) 
				ifFalse: [^ UserDialogBoxMorph inform: 'Invalid repository url' asString title: 'Operation canceled'].
			projectNames := projects 
				collect: [:each | each at: 'name'].
			chosenProject := UIManager default 
				chooseFrom: projectNames
				values: projects
				title: 'Choose your project:'.
			chosenProject 
				ifNil: [^self].
				
			self boardProvider projectId: (chosenProject at: 'id')].
		
	self changeProvider projectId: self boardProvider projectId.
	self changeProvider api getWebhookChanges: self changeProvider webhookId.