as yet unclassified
createLabel: aSPBLabel user: aString repo: anOtherString

	| request response stream url |
	url := 'https://api.github.com/repos/' , aString , '/' , anOtherString, '/labels'.
	stream := WriteStream with: OrderedCollection new.
	aSPBLabel jsonWriteOn: stream.
	
	request := self createPostRequestTo: url.
	request headerAt: 'Content-Length' put: stream size.
		
	response := (WebClient new initializeFromUrl: url) sendRequest: request content: stream readStream size: stream size.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
	
	^ Json readFrom: stream.