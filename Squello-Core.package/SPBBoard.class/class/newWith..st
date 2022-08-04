startup
newWith: aString

	| instance authenticator |
	instance := self new.
	
	[instance parseRepoFromUrl: aString]
		on: Error do: [self errorParsingUrl. ^ self].
	
	authenticator := SPBAuthenticator newWith: instance boardProvider.
	[authenticator authenticate]
		on: Error do: [^ self].
		
	[instance loadProject: aString]
		on: Error do: [^ self].

	instance buildAndOpen.
	^ instance.