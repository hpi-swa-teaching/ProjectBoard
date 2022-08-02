request creation/sending
getRequestToURLWithoutAuth: aString

	| request response stream |
	request := self createGetRequestTo: aString.
	request removeHeader: 'Authorization'.
	response := (WebClient new initializeFromUrl: aString) sendRequest: request.
	stream := ReadStream on: response content from: 1 to: response content byteSize.

	^ Json readFrom: stream.