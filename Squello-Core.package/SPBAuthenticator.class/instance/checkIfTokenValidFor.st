authentication
checkIfTokenValidFor
	
	| tokenScopes repo |
	[tokenScopes := self getTokenScopes]
		on: Error do: [Error signal].
	
	"test if you can query the repo with this token"
	repo := self boardProvider getRepo.
	repo message = 'Not Found' 
		ifTrue:
			[(tokenScopes includes: 'repo')
				ifTrue: [self errorRepoNotFound].
			(tokenScopes includes: 'public_repo')
				ifTrue: [self errorInvalidTokenScopes]].
	