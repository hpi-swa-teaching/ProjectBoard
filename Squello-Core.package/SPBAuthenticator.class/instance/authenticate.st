authentication
authenticate

	self checkIfCredentialsMissing
		ifTrue: [SPBAuthenticationForm open].
	self checkIfCredentialsMissing 
		ifTrue: [self errorAuthenticationCanceled. Error signal].
	
	"this is now handled by the boardProvider"
	"[self checkIfTokenValid]
		on: Error do: [Error signal]."