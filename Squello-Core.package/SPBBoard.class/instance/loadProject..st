initialize-release
loadProject: aString

	(aString includesSubstring: '/projects')
		ifTrue: [self parseProjectFromUrl: aString]
		ifFalse: [self chooseProjectFromUrl: aString].