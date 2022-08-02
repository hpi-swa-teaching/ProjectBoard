authentication
authenticate

	self checkIfCredentialsMissing
		ifTrue: [SPBAuthenticationForm open].

	self checkIfCredentialsMissing 
		ifTrue: [self errorAuthenticationCanceled. Error signal].
		
	[self checkIfTokenValidFor]
		on: Error do: [Error signal].