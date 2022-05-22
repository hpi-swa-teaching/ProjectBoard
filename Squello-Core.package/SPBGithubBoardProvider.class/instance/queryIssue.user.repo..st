api calls
queryIssue: aNumber user: aString repo: anOtherString

	| url |
	url := 'https://api.github.com/repos/' , aString , '/' , anOtherString , '/issues/' , aNumber.
	
	^ self getRequestToURL: url.