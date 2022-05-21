api calls
getBoardIDFromUrl: aString

	| response url projID pathComponents |
	url := aString asUrl.
	pathComponents := url fullPath splitBy: '/'.
	self user: (pathComponents at: 2).
	self repo: (pathComponents at: 3).
	projID := url fileName asNumber.
	url := 'https://api.github.com/repos/' , self user , '/' , self repo , '/projects'.
	
	response := self getRequestToURL: url.
	^ {self user . self repo . (response at: projID) at: 'id'}.