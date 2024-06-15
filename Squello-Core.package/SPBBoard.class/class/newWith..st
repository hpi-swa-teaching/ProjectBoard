startup
newWith: aString

	| instance |
	instance := self new.
	
	"["instance loadProject: aString."]
		on: Error do: [self errorParsingUrl. ^ self]."

	instance buildAndOpen.
	^ instance.