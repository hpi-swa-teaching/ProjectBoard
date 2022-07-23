initialize-release
parseInputBoardUrl: aString

	| projects url boardNr |
	url := aString asUrl.
	projects := self getProjects: aString.
	
	boardNr := url fileName asNumber.
	(projects size < boardNr) 
		ifTrue: [^ #invalidNumber].
	
	self
		projectId: ((projects at: boardNr) at: 'id').