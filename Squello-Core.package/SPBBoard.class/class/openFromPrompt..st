startup
openFromPrompt: prompt

	[(prompt beginsWith: self localPrefix) 
		ifTrue: [self openLocal: prompt]
		ifFalse: [self newWith: prompt.]] fork.
	