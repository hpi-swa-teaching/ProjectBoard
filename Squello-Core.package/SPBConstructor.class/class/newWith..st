instance creation
newWith: aString

	| instance |
	instance := self new.
	instance provider parseInputBoardUrl: aString.
	instance buildAndOpen.
	^ instance.
	