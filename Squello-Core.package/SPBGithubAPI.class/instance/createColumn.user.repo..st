api call post request
createColumn: aDictionary user: aString repo: anotherString
	
	"aDictionary Parameter:
		name -> string"
	
	| stream url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString, '/columns'.
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	^ self postRequestToURL: url withData: stream.