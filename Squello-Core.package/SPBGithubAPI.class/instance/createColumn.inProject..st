api call post request
createColumn: aDictionary inProject: aNumber

	"aDictionary Paramter:
		name -> string"
	"aNumber => project ID"

	| stream url |
	url := 'https://api.github.com/projects/' , aNumber ,  '/columns'.
	
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	^ self postRequestToURL: url withData: stream.