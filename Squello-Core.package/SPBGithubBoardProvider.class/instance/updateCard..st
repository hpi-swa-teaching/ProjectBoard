api calls
updateCard: anSPBCard

	| request response stream url |
	url := 'https://api.github.com/repos/' , anSPBCard user , '/' , anSPBCard repo , '/issues/', anSPBCard issueId.
	stream := WriteStream with: OrderedCollection new.
	(Dictionary newFrom: {'title' -> anSPBCard title . 'body' -> anSPBCard description}) jsonWriteOn: stream.
	
	request := self createPatchRequestTo: url.
	request headerAt: 'Content-Length' put: stream size.
		
	response := (WebClient new initializeFromUrl: url) sendRequest: request content: stream readStream size: stream size.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
		
	^ Json readFrom: stream.