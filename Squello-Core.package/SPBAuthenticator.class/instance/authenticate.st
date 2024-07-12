authentication
authenticate

	self checkIfCredentialsMissing
		ifTrue: [SPBAuthenticationForm open].
	self checkIfCredentialsMissing 
		ifTrue: [self errorAuthenticationCanceled. Error signal].