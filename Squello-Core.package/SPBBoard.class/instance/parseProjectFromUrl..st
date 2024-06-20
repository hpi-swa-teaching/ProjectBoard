initialize-release
parseProjectFromUrl: aString
	
	(aString includesSubstring: '/orgs/')
		ifTrue: [self boardProvider: SPBGithubOrgBoardProvider new].
	(aString includesSubstring: '/users/')
		ifTrue: [self boardProvider: SPBGithubUserBoardProvider new].
	self boardProvider parseInputBoardUrl: aString.