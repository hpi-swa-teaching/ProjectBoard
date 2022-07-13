api call patch request
updateColumn: aNumber withData: aDictionary
	
	"aNumber => column ID"
	"aDictionary Parameter:
		name -> string"
	
	| stream url |
	url := 'https://api.github.com/projects/columns/' , aNumber.
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	self patchRequestToURL: url withData: stream.