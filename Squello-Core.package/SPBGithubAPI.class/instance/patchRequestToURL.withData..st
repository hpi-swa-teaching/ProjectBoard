request creation/sending
patchRequestToURL: aString withData: aStream
	
	| request response responseStream |
	request := self createPatchRequestTo: aString.
	request headerAt: 'Content-Length' put: aStream size.
	
	response := (WebClient new initializeFromUrl: aString) sendRequest: request content: aStream readStream size: aStream size.
	responseStream := ReadStream on: response content from: 1 to: response content byteSize.
	
	^ Json readFrom: responseStream.