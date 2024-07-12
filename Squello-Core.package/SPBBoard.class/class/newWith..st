startup
newWith: aString

	| instance |
	instance := self new.
	
	SPBAuthenticator new authenticate.
	[instance loadProject: aString.]
		on: Error do: [self errorParsingUrl. ^ self].

	instance buildAndOpen.
	^ instance.