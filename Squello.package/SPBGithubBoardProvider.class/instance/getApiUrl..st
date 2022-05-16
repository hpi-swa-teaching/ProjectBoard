as yet unclassified
getApiUrl: aString

	| request response stream |
	request := self createGetRequestTo: aString.
	response := (WebClient new initializeFromUrl: aString) sendRequest: request.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
	
	^ Json readFrom: stream.