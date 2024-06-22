initialize-release
chooseProjectFromUrl: aString

	| projects chosenProject |
	[projects := (self boardProvider getProjects: aString)]
		on: Error do: [self errorInvalidUrl].
	projects isEmpty ifTrue: [self errorNoProjects].
	
	chosenProject := self chooseProjectFrom: projects.
	chosenProject ifNil: [^ self].
	self boardProvider boardNr: (chosenProject at: 'number').
	self boardProvider projectId: (chosenProject at: 'id').