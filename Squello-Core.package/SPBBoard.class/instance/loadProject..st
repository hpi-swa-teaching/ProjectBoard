initialize-release
loadProject: aString

	(aString includesSubstring: '/projects')
		ifTrue: [self parseProjectFromUrl: aString]
			"on: Error do: [self errorInvalidUrl.]]"
		ifFalse: [[self chooseProjectFromUrl: aString]
			on: Error do: [Error signal]].		
	
	self setUpChangeProvider.