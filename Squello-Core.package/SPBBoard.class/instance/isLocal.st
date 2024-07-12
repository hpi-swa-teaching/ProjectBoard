accessing
isLocal
	
	isLocal 
		ifNil: [self isLocal: false].
	^ isLocal.