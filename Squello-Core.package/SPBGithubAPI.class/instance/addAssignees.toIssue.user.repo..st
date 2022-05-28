api call post request
addAssignees: aDictionary toIssue: aNumber user: aString repo: anotherString
	
	"aDictionary Parameter:
		assignees -> array of strings (assignee names)"
	"aNumber -> Issue number"
	
	| stream url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString, '/issues/' , aNumber , '/assignees'.
	
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	^ self postRequestToURL: url withData: stream.