as yet unclassified
queryGithubAPI: aString

	| request response stream |
		
	request := WebRequest new initializeFromUrl: aString. 
	request
		method: 'GET';
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		headerAt: 'authorization' put: 'Basic ' , (self username, ':', self token) base64Encoded;
		headerAt: 'Host' put: 'api.github.com';
		headerAt: 'User-Agent' put: 'squello/v 0.1'.

	response := (WebClient new initializeFromUrl: aString) sendRequest: request.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
	
	^ Json readFrom: stream.