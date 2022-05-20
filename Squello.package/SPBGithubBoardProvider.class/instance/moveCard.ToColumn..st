api calls
moveCard: aNumber ToColumn: anOtherNumber

	"aNumber -> CardID"
	"anOtherNumber -> target column id"
	| request response stream url payload |
	url := 'https://api.github.com/projects/columns/cards/' , aNumber , '/moves'.
	payload := '{"position": "top", "column_id": ' , anOtherNumber , '"}'.
	
	request := self createPostRequestTo: url.
	request headerAt: 'Content-Length' put: payload size.
	
	response := (WebClient new initializeFromUrl: url) sendRequest: request content: payload readStream size: payload size.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
		
	^ Json readFrom: stream.