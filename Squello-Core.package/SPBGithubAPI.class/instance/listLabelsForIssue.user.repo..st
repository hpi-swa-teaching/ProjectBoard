api calls get request
listLabelsForIssue: aNumber user: aString repo: anotherString
	
	"aNumber => Issue number"
	| url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString , '/issues/' , aNumber , '/labels'.
	
	^ self createGetRequestTo: url.