api calls get request
queryProjectsForUser: aString repo: anotherString

	| url |
	url := 'https://api.github.com/repos/' , aString , '/', anotherString , '/projects'.
	
	^ self getRequestToURL: url.