initialize-release
parseInputBoardUrl: aString

	| projects url boardNr pathComponents |
	url := aString asUrl.
	pathComponents := url fullPath splitBy: '/'.
	self user: (pathComponents at: 2).
	self repo: (pathComponents at: 3).
	boardNr := url fileName asNumber.
	
	projects := self api queryProjectsForUser: self user repo: self repo.
	self projectID: ((projects at: boardNr) at: 'id').