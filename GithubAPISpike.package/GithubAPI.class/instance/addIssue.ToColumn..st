as yet unclassified
addIssue: aNumber ToColumn: anOtherNumber


	"aNumber -> Issue ID (NOT issue number #x)"
	"anOtherNumber -> target column id"
	| request response stream url payload |
	
	url := 'https://api.github.com/projects/columns/' , anOtherNumber , '/cards'.
	
	payload := '{"content_type": "Issue", "content_id": ' , aNumber , '"}'.
	
	request := WebRequest new initializeFromUrl: url. 
	request
		method: 'POST';
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		headerAt: 'authorization' put: 'Basic ' , (self username, ':', self token) base64Encoded;
		headerAt: 'Host' put: 'api.github.com';
		headerAt: 'User-Agent' put: 'squello/v 0.1';
		headerAt: 'Content-Type' put: 'application/json';
		headerAt: 'Content-Length' put: payload size.
		
	response := (WebClient new initializeFromUrl: url) sendRequest: request content: payload readStream size: payload size.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
		
	^ Json readFrom: stream.