as yet unclassified
queryIssue: aNumber user: aString repo: anOtherString

	| url |
	url := 'https://api.github.com/repos/' , aString , '/' , anOtherString , '/issues/' , aNumber.
	
	^ self getApiWithUrl: url.