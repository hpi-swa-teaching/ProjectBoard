api call post request
addLabels: aDictionary toIssue: aNumber user: aString repo: anotherString
	
	" aDictionary Parameter:
		label -> array of strings (title of labels)"
	"aNumber => Issue Number"
	
	| stream url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString, '/issues/' , aNumber , '/labels'.
	
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	^ self postRequestToURL: url withData: stream.