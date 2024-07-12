api call post request
createIssue: aDictionary user: aString repo: anotherString
	
	"aDictionary Parameter:
		title -> string
		body -> string
		assignees -> array of strings
		labels -> array of strings"
	
	| stream url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString, '/issues'.
	
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	^ self postRequestToURL: url withData: stream.