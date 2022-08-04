initialize-release
parseInputBoardUrl: aString

	| projects url boardNr |
	url := aString asUrl.
	projects := self getProjects: aString.
	boardNr := url fileName asNumber.
	(projects size < boardNr or: [boardNr < 1])
		ifTrue: [Error signal].
	self projectId: ((projects at: boardNr) at: 'id').