api calls delete request
deleteLabel: aString fromIssue: aNumber user: anOtherString repo: aThirdString
		
	| stream url |
	url := ('https://api.github.com/repos/' , anOtherString , '/' , aThirdString, '/issues/' , aNumber , '/labels/' , aString) urlEncoded.
	
	self halt.
	
	stream := WriteStream with: OrderedCollection new.
	
	^ self deleteRequestToURL: url withData: stream.