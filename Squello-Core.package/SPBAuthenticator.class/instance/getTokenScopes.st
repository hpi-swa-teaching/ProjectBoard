authentication
getTokenScopes
	
	| tokenScopes |
	tokenScopes := self boardProvider getTokenOAuthScopes.
	[self detectInsufficientScopes: tokenScopes]
		on: Error do: [Error signal].
	
	^ tokenScopes.

	