authentication
checkIfTokenValid
	
	| tokenScopes |
	[tokenScopes := self getTokenScopes]
		on: Error do: [Error signal].
		
	self tryQueryRepo
		ifFalse:
			[(tokenScopes includes: 'repo') 
				ifTrue: [self errorRepoNotFound].
			(tokenScopes includes: 'public_repo')
				ifTrue: [self errorInvalidTokenScopes]].
	