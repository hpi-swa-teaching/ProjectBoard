api calls get request
listPossibleAssigneesForUser: aString repo: anotherString

	| url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString , '/assignees'.
	
	^ self getRequestToURL: url.