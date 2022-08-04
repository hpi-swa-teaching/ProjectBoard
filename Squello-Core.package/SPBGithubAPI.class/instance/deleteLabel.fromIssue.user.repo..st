api calls delete request
deleteLabel: aString fromIssue: aNumber user: anotherString repo: aThirdString
		
	| stream url |
	url := ('https://api.github.com/repos/', anotherString, '/', aThirdString, 
		'/issues/', aNumber, 
		'/labels/' , aString) urlEncoded.
		
	stream := WriteStream with: OrderedCollection new.
	
	self deleteRequestToURL: url withData: stream.