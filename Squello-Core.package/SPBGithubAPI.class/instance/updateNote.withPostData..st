api call patch request
updateNote: aNumber withPostData: aDictionary
	
	"aNumber -> CardID"
	"aDictionary Parameter:
		note -> string"
	
	| stream url |
	url := 'https://api.github.com/projects/columns/cards/' , aNumber.
	
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	self patchRequestToURL: url withData: stream.