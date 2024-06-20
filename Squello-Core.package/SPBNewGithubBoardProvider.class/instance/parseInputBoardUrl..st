initialize-release
parseInputBoardUrl: aString

	| pathComponents |
	pathComponents := aString asUrl fullPath splitBy: '/'.
	self boardNr: (pathComponents at: 5) asNumber.
	self user: (pathComponents at: 3).
	
	self projectId: (self getProjectId: self boardNr user: self user).