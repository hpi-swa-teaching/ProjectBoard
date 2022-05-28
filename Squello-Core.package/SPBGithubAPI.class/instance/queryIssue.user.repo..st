api calls get request
queryIssue: aNumber user: aString repo: anotherString
	
	"aNumber => Issue number"
	| url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString , '/issues/' , aNumber.
	
	^ self getRequestToURL: url.