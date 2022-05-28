request creation/sending
deleteRequestToURL: aString
	
	| request responseStream |
	request := self createDeleteRequestTo: aString.
	responseStream := (WebClient new initializeFromUrl: aString) sendRequest: request.
	
	^ Json readFrom: responseStream.