startup
newLocalWith: aString

	| instance |
	instance := self new.
	instance makeLocal.
	
	[instance parseLocalRepoFromUrl: aString]
		on: Error do: [self errorParsingUrl. ^ self].
	
	instance buildAndOpen.
	^ instance.