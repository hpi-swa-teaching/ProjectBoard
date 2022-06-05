api calls get request
listPossibleLabelsForUser: aString repo: anotherString

	| url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString , '/labels'.
	
	^ self getRequestToURL: url.