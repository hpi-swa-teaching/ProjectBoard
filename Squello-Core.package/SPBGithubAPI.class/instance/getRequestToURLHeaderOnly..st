request creation/sending
getRequestToURLHeaderOnly: aString

	| request response |
	request := self createGetRequestTo: aString.
	response := (WebClient new initializeFromUrl: aString) sendRequest: request.
	
	^ response headers.