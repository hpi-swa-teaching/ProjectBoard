api calls
getBoardID: aNumber fromRepo: aString byUser: anOtherString

	| request response stream url lastSlashPos |
	lastSlashPos := (aString asOrderedCollection lastIndexOf: $.) - 1.
	"url := (aString copyFrom: 1 to: 8) , 'api.' , (aString copyFrom: 9 to: 19) , 'repos/' , (aString copyFrom: 20 to: lastSlashPos) , '/projects'."
	"url := aString."
	"url := 'https://api.github.com/repos/hpi-swa-teaching/ProjectBoard'."
	url := 'https://api.github.com/repos/' , anOtherString , '/' , aString , '/projects'.
	
	request := self createGetRequestTo: url.
		
	response := (WebClient new initializeFromUrl: url) sendRequest: request.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
		
	^ ((Json readFrom: stream)).