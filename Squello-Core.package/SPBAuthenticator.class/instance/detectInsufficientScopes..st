authentication
detectInsufficientScopes: aCollection
	
	aCollection isEmpty
		ifTrue: [self errorGarbageToken].
	
	(((aCollection includes: 'repo') not) and: [(aCollection includes: 'public_repo') not])
		ifTrue: [self errorNoScopes].

	