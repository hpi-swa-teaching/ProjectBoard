initialize-release
chooseProjectFromUrl: aString

	| projects chosenProject |
	[projects := (self boardProvider getProjects: aString)]
		on: Error do: [self errorInvalidUrl].
	projects isEmpty ifTrue: [self errorNoProjects].
	
	chosenProject := self chooseProjectFrom: projects.
	self boardProvider projectId: (chosenProject at: 'id').
	
	

