initialize-release
parseInputBoardUrl: aString

	| projects url|
	url := aString asUrl.
	projects := self getProjects: aString.
	self boardNr: url fileName asNumber.
	(projects size < boardNr or: [self boardNr < 1])
		ifTrue: [Error signal].
	self projectId: ((projects at: self boardNr) at: 'id').