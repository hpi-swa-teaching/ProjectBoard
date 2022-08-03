initialize-release
loadProject: aString

	| chosenProject projectNames projects |
	(aString includesSubstring: '/projects')
		ifTrue: [[self boardProvider parseInputBoardUrl: aString]
						on: Error do: [self errorInvalidUrl.]]
		ifFalse: [[projects := (self boardProvider getProjects: aString)]
						on: Error do: [self errorInvalidUrl].
			projects isEmpty ifTrue: [self errorNoProjects].
			projectNames := projects 
				collect: [:project | project at: 'name'].
			chosenProject := UIManager default 
				chooseFrom: projectNames
				values: projects
				title: 'Choose your project:'.
			chosenProject 
				ifNil: [^ self].
			self boardProvider projectId: (chosenProject at: 'id')].		
	
	self changeProvider projectId: self boardProvider projectId.
	self changeProvider api getWebhookChanges: self changeProvider webhookId.