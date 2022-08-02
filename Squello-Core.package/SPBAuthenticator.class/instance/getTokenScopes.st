authentication
getTokenScopes
	
	| tokenScopes |
	tokenScopes := self boardProvider getTokenOAuthScopes.
	tokenScopes isEmpty
		ifTrue: [self errorGarbageToken].
	
	(((tokenScopes includes: 'repo') not) and: [(tokenScopes includes: 'public_repo') not])
		ifTrue: [self errorNoScopes].
	^ tokenScopes.

	