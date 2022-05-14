as yet unclassified
createIssue: aDictionary owner: aString repo: anOtherString

	| request response stream url |
	
	url := 'https://api.github.com/repos/' , aString , '/' , anOtherString, '/issues'.
	
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	request := WebRequest new initializeFromUrl: url. 
	request
		method: 'POST';
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		headerAt: 'authorization' put: 'Basic ' , (self username, ':', self token) base64Encoded;
		headerAt: 'Host' put: 'api.github.com';
		headerAt: 'User-Agent' put: 'squello/v 0.1';
		headerAt: 'Content-Type' put: 'application/json';
		headerAt: 'Content-Length' put: stream size.
		
	response := (WebClient new initializeFromUrl: url) sendRequest: request content: stream readStream size: stream size.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
		
	^ Json readFrom: stream.