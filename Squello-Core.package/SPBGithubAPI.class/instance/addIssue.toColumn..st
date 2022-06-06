api call post request
addIssue: aDictionary toColumn: anotherNumber 

	"aDictionary Parameter: 
		note -> string
		content_id -> identifier for the card content, eg. issue ID
		content_type -> type of content, eg. 'Issue'"
	"anotherNumber => target column ID"
	
	| stream url |
	url := 'https://api.github.com/projects/columns/' , anotherNumber , '/cards'.
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	^ self postRequestToURL: url withData: stream.