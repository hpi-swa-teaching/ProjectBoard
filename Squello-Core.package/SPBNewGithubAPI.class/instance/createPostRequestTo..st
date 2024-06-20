request creation
createPostRequestTo: aString

	| request |
	request := WebRequest new initializeFromUrl: aString.
	
	^ request
		method: 'POST';
		headerAt: 'Authorization' put: 'Bearer ' , self class token;
		headerAt: 'User-Agent' put: 'squello/v 0.2';
		yourself.