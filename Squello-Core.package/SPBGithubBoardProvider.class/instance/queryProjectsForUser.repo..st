api calls
queryProjectsForUser: aString repo: anOtherString

	| url |
	url := 'https://api.github.com/repos/' , aString , '/', anOtherString , '/projects'.
	
	^ self getRequestToURL: url.