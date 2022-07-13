api calls delete request
deleteAssignee: aDictionary fromIssue: aNumber user: aString repo: anotherString
	
	"aDictionary Parameter:
		assignees -> array of one username"
	"aNumber => Issue number"
	
	| stream url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString, '/issues/' , aNumber , '/assignees'.
	
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	^ self deleteRequestToURL: url withData: stream.
	
	