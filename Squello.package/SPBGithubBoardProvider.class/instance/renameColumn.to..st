as yet unclassified
renameColumn: aNumber to: aString

	| request response stream url |
	url := 'https://api.github.com/projects/columns/' , aNumber.
	stream := WriteStream with: OrderedCollection new.
	(Dictionary newFrom: {'name' -> aString}) jsonWriteOn: stream.
	
	request := self createPatchRequestTo: url.
	request headerAt: 'Content-Length' put: stream size.
		
	response := (WebClient new initializeFromUrl: url) sendRequest: request content: stream readStream size: stream size.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
		
	^ Json readFrom: stream.