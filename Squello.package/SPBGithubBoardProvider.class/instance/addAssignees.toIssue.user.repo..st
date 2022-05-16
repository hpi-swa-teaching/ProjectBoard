as yet unclassified
addAssignees: aCollection toIssue: aNumber user: aString repo: anOtherString

	| request response stream url payload |
	url := 'https://api.github.com/repos/' , aString , '/' , anOtherString, '/issues/' , aNumber , '/assignees'.
	
	stream := WriteStream with: OrderedCollection new.
	
	payload := Dictionary newFrom: { 'assignees' -> (aCollection collect: [:aSPBAssignee | aSPBAssignee username]) }.
	payload jsonWriteOn: stream.
	
	request := self createPostRequestTo: url.
	request headerAt: 'Content-Length' put: stream size.
	
	response := (WebClient new initializeFromUrl: url) sendRequest: request content: stream readStream size: stream size.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
	
	^ Json readFrom: stream.