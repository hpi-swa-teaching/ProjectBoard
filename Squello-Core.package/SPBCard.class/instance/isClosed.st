accessing
isClosed
	
	isClosed ifNil: [self isClosed: false].
	^ isClosed