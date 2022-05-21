api calls
getBoardIDFromUrl: aString

	| response url projID pathComponents user repo |
	url := aString asUrl.
	pathComponents := url fullPath splitBy: '/'.
	user := pathComponents at: 2.
	repo := pathComponents at: 3.
	projID := url fileName asNumber.
	url := 'https://api.github.com/repos/' , user , '/' , repo , '/projects'.
	
	response := self getRequestToURL: url.
	^ {user . repo . (response at: projID) at: 'id'}.