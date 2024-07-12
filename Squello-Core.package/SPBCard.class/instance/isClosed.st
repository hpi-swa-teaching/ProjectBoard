accessing
isClosed
	
	isClosed
		ifNil: [self isClosed: false.
			self updateStatus.].
	^ isClosed.