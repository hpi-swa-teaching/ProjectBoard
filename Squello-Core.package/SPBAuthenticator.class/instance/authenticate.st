authentication
authenticate

	self checkIfCredentialsMissing
		ifTrue: [SPBAuthenticationForm open].

	self checkIfCredentialsMissing 
		ifTrue: [self errorAuthenticationCanceled. Error signal].
		
	[self checkIfTokenValid]
		on: Error do: [Error signal].