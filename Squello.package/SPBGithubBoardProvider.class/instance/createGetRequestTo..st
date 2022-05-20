request creation/sending
createGetRequestTo: aString

	| request |
	request := WebRequest new initializeFromUrl: aString. 
	
	^ request
		method: 'GET';
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		headerAt: 'Authorization' put: 'Basic ' , (self class username, ':', self class token) base64Encoded;
		headerAt: 'Host' put: 'api.github.com';
		headerAt: 'User-Agent' put: 'squello/v 0.1';
		yourself.