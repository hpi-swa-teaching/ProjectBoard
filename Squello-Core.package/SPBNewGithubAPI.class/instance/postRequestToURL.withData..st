request creation
postRequestToURL: aString withData: aStream
	
	| request response |
	request := self createPostRequestTo: aString.
	request headerAt: 'Content-Length' put: aStream size.
	
	response := (WebClient new initializeFromUrl: aString) 
		sendRequest: request content: aStream readStream size: aStream size.
	^ response content.