request creation
postRequestwithData: aJsonObject
	
	| request response stream |
	stream := WriteStream with: OrderedCollection new.
	aJsonObject jsonWriteOn: stream.
	request := self createPostRequestTo: self class url.
	request headerAt: 'Content-Length' put: stream size.
	
	response := (WebClient new initializeFromUrl: self class url) 
		sendRequest: request content: stream readStream size: stream size.
	^ response content parseAsJson.