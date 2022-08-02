api calls get request
queryUser: aString repo: anotherString

	| url |
	url := 'https://api.github.com/repos/', aString, '/', anotherString.
	
	^ self getRequestToURL: url.