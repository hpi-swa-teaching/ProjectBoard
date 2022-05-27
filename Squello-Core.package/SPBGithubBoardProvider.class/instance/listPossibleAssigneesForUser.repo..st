api calls
listPossibleAssigneesForUser: aString repo: anOtherString

	| url |
	url := 'https://api.github.com/repos/' , aString , '/' , anOtherString , '/assignees'.
	
	^ self getRequestToURL: url.