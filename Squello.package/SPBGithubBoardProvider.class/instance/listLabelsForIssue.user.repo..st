api calls
listLabelsForIssue: aNumber user: aString repo: anOtherString

	| url |
	url := 'https://api.github.com/repos/' , aString , '/' , anOtherString , '/issues/' , aNumber , '/labels'.
	
	^ self createGetRequestTo: url.