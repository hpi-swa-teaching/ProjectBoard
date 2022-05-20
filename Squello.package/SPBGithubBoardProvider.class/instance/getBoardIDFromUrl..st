as yet unclassified
getBoardIDFromUrl: aString

	| request response stream url lastSlashPos projID |
	lastSlashPos := (aString asOrderedCollection lastIndexOf: $/) - 1.
	url := (aString copyFrom: 1 to: 8) , 'api.' , (aString copyFrom: 9 to: 19) , 'repos/' , (aString copyFrom: 20 to: lastSlashPos).
	projID := (aString copyFrom: (lastSlashPos + 2) to: aString size) asNumber.
	
	request := self createGetRequestTo: url.
		
	response := (WebClient new initializeFromUrl: url) sendRequest: request.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
		
	^ ((Json readFrom: stream) at: projID) at: 'id'.