api call patch request
updateIssue: aNumber withData: aDictionary user: aString repo: anotherString
	
	"aNumber => Issue number"
	"aDictionary Parameter:
		title -> string
		body -> string
		assignees -> array of strings
		labels -> array of strings"
	
	| stream url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString , '/issues/', aNumber.
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	^ self patchRequestToURL: url withData: stream.